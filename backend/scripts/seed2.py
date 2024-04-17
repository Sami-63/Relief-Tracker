import json
import os
import sys
from pathlib import Path

BASE_DIR = Path(__file__).resolve().parent.parent


def setup_django():
    sys.path.append(BASE_DIR.as_posix())
    os.environ.setdefault('DJANGO_SETTINGS_MODULE', 'relief_tracker.settings')

    import django
    django.setup()
    print('django setup complete\n\n')


def populate_dbb():
    from location.models import Upazila
    from django.db.models import Q

    with open('scripts/after/upazila_added.json') as f:
        added_list = json.load(f)

    with open('scripts/after/upazila_not_found.json') as f:
        not_found_list = json.load(f)

    copy_not_found_list = not_found_list.copy()
    for u in copy_not_found_list:
        name = u['name']
        lat = u['latitude']
        lon = u['longitude']

        upazilas = Upazila.objects.filter(Q(Q(name=name) | Q(bangla_name=name)))
        if upazilas.exists():

            print('Found Upazila')
            if upazilas.count() == 1:
                print('Found only 1 Upazila')
                print(
                    f'upazila -> {upazilas[0].id} {upazilas[0].name} {upazilas[0].bangla_name} {upazilas[0].latitude} {upazilas[0].longitude}')
                print(f'new -> {name} {lat} {lon}')

                upp = Upazila.objects.get(id=upazilas[0].id)
                upp.latitude = lat
                upp.longitude = lon
                upp.save()
                print(f'{upp.name} updated')

                added_list.append(u)
                not_found_list.remove(u)

            elif upazilas.count() > 1:
                print('Found more than 1 Upazila')

                res = input('Do you want to update or skip all? (u/s): ')
                if res == 's':
                    print(f'{name} not updated')
                    continue
                for i, upazila in enumerate(upazilas):
                    print(
                        f'{i + 1}. {upazila.id} {upazila.name} {upazila.bangla_name} {upazila.latitude} {upazila.longitude}')

                response = input('Which one do you want to update? (Enter the number): ')
                upazila = upazilas[int(response) - 1]
                print(
                    f'upazila -> {upazila.id} {upazila.name} {upazila.bangla_name} {upazila.latitude} {upazila.longitude}')
                response = input('Do you want to update this upazila? (y/n): ')

                if response == 'y' or response == '':
                    up = Upazila.objects.get(id=upazila.id)
                    up.latitude = lat
                    up.longitude = lon
                    up.save()
                    print(f'{name} updated')
                    added_list.append(u)
                    not_found_list.remove(u)
                else:
                    print(f'{name} not updated')

        else:
            print(f'{name} not found')

        with open('scripts/after/upazila_not_found.json', 'w') as f:
            json.dump(not_found_list, f)
            print('not found list updated')

        with open('scripts/after/upazila_added.json', 'w') as f:
            json.dump(added_list, f)
            print('added list updated')

        print('-----------------------------------\n')

        # do you want to continue
        # res = input('Do you want to continue? (y/n): ')
        # if res == 'n':
        #     break

        print('\n\n')


def main():
    with open('scripts/after/upazila_added.json') as f:
        added_list = json.load(f)

    with open('scripts/after/upazila_not_found.json') as f:
        not_found_list = json.load(f)

    with open('scripts/upazilla-coordinates.json') as f:
        upazilas = json.load(f)

    print(len(added_list))
    print(len(not_found_list))
    print(len(upazilas))


if __name__ == '__main__':
    setup_django()
    # populate_dbb()
    main()

import json
import os
import sys
from pathlib import Path
from pprint import pprint


def get_divisions():
    with open('scripts/info/division.json') as f:
        data = json.load(f)

    divisions = []
    for division in data['data']:
        name = division['name']
        bangla_name = division['bn_name']
        division_id = division['id']
        divisions.append([
            int(division_id),
            {
                'name': name,
                'bangla_name': bangla_name,
            }
        ])

    return divisions


def get_districts():
    with open('scripts/info/district.json') as f:
        data = json.load(f)

    districts = []
    for district in data['data']:
        name = district['name']
        bangla_name = district['bn_name']
        division_id = district['division_id']
        latitude = district['lat']
        longitude = district['lon']
        district_id = district['id']

        districts.append([
            int(district_id),
            {
                'name': name,
                'bangla_name': bangla_name,
                'division_id': int(division_id),
                'latitude': latitude,
                'longitude': longitude
            }
        ])

    return districts


def get_upazilas():
    with open('scripts/info/upazila.json') as f:
        data = json.load(f)

    upazilas = []
    for upazila in data['data']:
        name = upazila['name']
        bangla_name = upazila['bn_name']
        district_id = upazila['district_id']
        upazila_id = upazila['id']

        upazilas.append([
            int(upazila_id),
            {
                'name': name,
                'bangla_name': bangla_name,
                'district_id': int(district_id)
            }
        ])

    return upazilas


def get_unions():
    with open('scripts/info/unions.json') as f:
        data = json.load(f)

    unions = []
    for union in data['data']:
        name = union['name']
        bangla_name = union['bn_name']
        upazila_id = union['upazilla_id']
        union_id = union['id']

        unions.append([
            int(union_id),
            {
                'name': name,
                'bangla_name': bangla_name,
                'upazila_id': int(upazila_id)
            }
        ])

    return unions


def add_division_to_db(divisions):
    from location.models import Division

    pprint(divisions)

    created = []

    for division in divisions:
        d = Division.objects.create(
            name=division[1]['name'],
            bangla_name=division[1]['bangla_name']
        )
        created.append(
            {
                'db_id': d.id,
                'json_id': division[0],
            }
        )

    pprint(created)
    with open('scripts/after/division.json', 'w') as f:
        json.dump(created, f)


def add_district_to_db(districts):
    from location.models import District

    pprint(districts)

    created = []

    for district in districts:
        d = District.objects.create(
            name=district[1]['name'],
            bangla_name=district[1]['bangla_name'],
            longitude=district[1]['longitude'],
            latitude=district[1]['latitude']
        )
        created.append(
            {
                'db_id': d.id,
                'json_id': district[0],
            }
        )

    pprint(created)
    with open('scripts/after/district.json', 'w') as f:
        json.dump(created, f)


def add_upazila_to_db(upazilas):
    from location.models import Upazila, District

    pprint(upazilas)

    created = []

    with open('scripts/after/district.json') as f:
        district_mapping = json.load(f)

    to_db = {}
    for mapping in district_mapping:
        to_db[mapping['json_id']] = mapping['db_id']

    for upazila in upazilas:
        d = Upazila.objects.create(
            name=upazila[1]['name'],
            bangla_name=upazila[1]['bangla_name'],
            district=District.objects.get(id=to_db[upazila[1]['district_id']])
        )
        created.append(
            {
                'db_id': d.id,
                'json_id': upazila[0],
            }
        )

    pprint(created)
    with open('scripts/after/upazila.json', 'w') as f:
        json.dump(created, f)


def add_union_to_db(unions):
    from location.models import Union, Upazila

    pprint(unions)

    created = []

    with open('scripts/after/upazila.json') as f:
        upazila_mapping = json.load(f)

    to_db = {}
    for mapping in upazila_mapping:
        to_db[mapping['json_id']] = mapping['db_id']

    for union in unions:
        d = Union.objects.create(
            name=union[1]['name'],
            bangla_name=union[1]['bangla_name'],
            upazila=Upazila.objects.get(id=to_db[union[1]['upazila_id']])
        )
        created.append(
            {
                'db_id': d.id,
                'json_id': union[0],
            }
        )

    pprint(created)
    with open('scripts/after/union.json', 'w') as f:
        json.dump(created, f)


def assign_division_id_to_district():
    from location.models import District, Division

    districts = get_districts()
    divisions = get_divisions()

    # pprint(districts)
    # pprint(divisions)

    for district in districts:
        district_id = district[0]
        division_id = district[1]['division_id']
        print(district_id, division_id)
        ds = District.objects.get(id=district_id)
        dv = Division.objects.get(id=division_id)
        ds.division = dv
        ds.save()


BASE_DIR = Path(__file__).resolve().parent.parent


def setup_django():
    sys.path.append(BASE_DIR.as_posix())
    os.environ.setdefault('DJANGO_SETTINGS_MODULE', 'relief_tracker.settings')

    import django
    django.setup()
    print('django setup complete')


if __name__ == '__main__':
    setup_django()
    # pprint(get_divisions())
    # pprint(get_districts())
    # pprint(get_upazilas())
    # pprint(get_unions())
    # add_division_to_db(get_divisions())
    # add_district_to_db(get_districts())
    # add_upazila_to_db(get_upazilas())
    # add_union_to_db(get_unions())
    # assign_division_id_to_district()

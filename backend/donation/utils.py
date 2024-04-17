from donation.enums import MediaType


def get_file_type(file):
    file_name = str(file)

    if (
            file_name.endswith('.jpg') or
            file_name.endswith('.jpeg') or
            file_name.endswith('.png') or
            file_name.endswith('.gif') or
            file_name.endswith('.svg') or
            file_name.endswith('.webp') or
            file_name.endswith('.bmp')
    ):
        return MediaType.IMAGE
    elif (
            file_name.endswith('.mp4') or
            file_name.endswith('.mov') or
            file_name.endswith('.avi') or
            file_name.endswith('.mkv') or
            file_name.endswith('.webm') or
            file_name.endswith('.flv') or
            file_name.endswith('.wmv')
    ):
        return MediaType.VIDEO
    elif (
            file_name.endswith('.mp3') or
            file_name.endswith('.wav') or
            file_name.endswith('.flac') or
            file_name.endswith('.aac') or
            file_name.endswith('.ogg') or
            file_name.endswith('.wma') or
            file_name.endswith('.m4a')
    ):
        return MediaType.AUDIO
    else:
        return MediaType.OTHER

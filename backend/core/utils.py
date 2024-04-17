import logging
from dataclasses import dataclass, asdict


@dataclass
class ApplicationMetadata:
    ip: str
    user_agent: str
    platform: str
    os: str
    package_name: str
    version: str
    locale: str
    time_zone: str


def get_application_metadata(request):
    """
    Extracts application metadata from request headers

    :type request: rest_framework.request.Request
    :rtype: ApplicationMetadata
    """
    return ApplicationMetadata(
        ip=request.headers.get('X-Forwarded-For'),
        user_agent=request.headers.get('User-Agent'),
        platform=request.headers.get('App-Platform'),
        os=request.headers.get('App-Os'),
        package_name=request.headers.get(
            'Package-Name',
            request.headers.get('App-Package-Name')
        ),
        version=request.headers.get(
            'Apk-Version',
            request.headers.get('App-Version')
        ),
        locale=request.headers.get(
            'Locale',
            request.headers.get('App-Locale')
        ),
        time_zone=request.headers.get('Time-Zone'),
    )


def get_logger(name='django'):
    return logging.getLogger(name)


def get_request_str(request):
    meta = request.META
    return f"{request.method} {request.get_full_path()} " \
           f"{meta.get('SERVER_PROTOCOL')} " \
           f"{meta.get('HTTP_USER_AGENT')} " \
           f"{meta.get('HTTP_X_FORWARDED_FOR')}"


def get_request_headers(request):
    meta = request.META
    headers = request.headers
    return f"Authorization: {meta.get('HTTP_AUTHORIZATION')}, " \
           f"Time-Zone: {headers.get('Time-Zone')}, " \
           f"Package-Name: {headers.get('Package-Name')}, " \
           f"Apk-Version: {headers.get('Apk-Version')}"


def get_debug_str(request, errors=None):
    user = getattr(request, 'user')
    return (
        f"""
        request: {get_request_str(request)}
        headers: {asdict(get_application_metadata(request))}
        user: {f"{user} ({user.id})" if user else ""}
        data: {request.data}
        errors: {errors}"""
    )


def generate_request_meta(request):
    return {
        'pn': request.headers.get('Package-Name'),
        'av': request.headers.get('Apk-Version'),
        'tz': request.headers.get('Time-Zone'),
        'ua': request.META.get('HTTP_USER_AGENT'),
        'ip': request.META.get('HTTP_X_FORWARDED_FOR')
    }


logger = get_logger()

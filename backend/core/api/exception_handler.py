from core.utils import get_debug_str, get_logger
from rest_framework.views import exception_handler

logger = get_logger()


def validation_error_log_handler(exc, context):
    # Call REST framework's default exception handler first,
    # to get the standard error response.
    response = exception_handler(exc, context)

    request = context.get('request', None)
    if request and response and response.status_code == 400:
        logger.error(get_debug_str(request=request, errors=response.data))

    return response

from rest_framework import serializers

from media_center.models import MediaCenter


class MediaSerializer(serializers.ModelSerializer):
    class Meta:
        model = MediaCenter
        fields = [
            'id',
            'title',
            'file',
            'type',
            'created_at',
            'modified_at',
        ]

    def to_representation(self, instance):
        representation = super().to_representation(instance)
        # Check if 'request' exists in the serializer's context
        if 'request' in self.context:
            # Get the request from the context
            request = self.context['request']
            # Build the absolute URL using request.build_absolute_uri()
            if instance.file:
                representation['file'] = request.build_absolute_uri(instance.file.url)
        return representation

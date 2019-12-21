ARG IMAGE_REPOSITORY
ARG IMAGE_NAME
ARG IMAGE_VERSION

FROM $IMAGE_REPOSITORY/$IMAGE_NAME:$IMAGE_VERSION

LABEL "com.github.actions.name"="Unity - Builder"
LABEL "com.github.actions.description"="Build Unity projects for different platforms."
LABEL "com.github.actions.icon"="box"
LABEL "com.github.actions.color"="gray-dark"

LABEL "repository"="http://github.com/webbertakken/unity-actions"
LABEL "homepage"="http://github.com/webbertakken/unity-actions"
LABEL "maintainer"="Webber Takken <webber@takken.io>"

ADD default-build-script /UnityBuilderAction
ADD entrypoint.sh /entrypoint.sh

RUN chmod +x /entrypoint.sh

ENTRYPOINT ["/entrypoint.sh"]
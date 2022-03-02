
{{/* Generate the namespace. */}}
{{- define "namespace.unquoted" }}
{{- .Values.namespace.name | default ( print ( .Values.namespace.namePrefix | default "" ) .Release.Name ( .Values.namespace.nameSuffix | default "" ) ) }}
{{- end }}

{{/* Generate the namespace. */}}
{{- define "namespace" }}
{{- include "namespace.unquoted" $ | quote }}
{{- end }}

{{/* Generate the name for a resource. */}}
{{- define "name.unquoted" }}
{{- .value.name | default ( print ( .value.namePrefix | default "" ) .context.Release.Name ( .value.nameSuffix | default "" ) ) }}
{{- end }}

{{/* Generate the name for a resource. */}}
{{- define "name" }}
{{- include "name.unquoted" $ | quote }}
{{- end }}

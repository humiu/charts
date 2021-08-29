
{{/* Generate the namespace. */}}
{{- define "namespace" }}
{{- .Values.namespace.name | default ( print ( .Values.namespace.namePrefix | default "" ) .Release.Name ( .Values.namespace.nameSuffix | default "" ) ) | quote }}
{{- end }}

{{/* Generate the name for a resource. */}}
{{- define "name" }}
{{- .resource.name | default ( print ( .resource.namePrefix | default "" ) .Release.Name ( .resource.nameSuffix | default "" ) ) | quote }}
{{- end }}

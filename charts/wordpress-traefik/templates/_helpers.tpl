
{{/* Generate the namespace. */}}
{{- define "namespace" }}
{{- .Values.namespace.name | default ( print ( .Values.namespace.namePrefix | default "" ) .Release.Name ( .Values.namespace.nameSuffix | default "" ) ) | quote }}
{{- end }}

{{/* Generate the name for a resource. */}}
{{- define "name" }}
{{- .value.name | default ( print ( .value.namePrefix | default "" ) .context.Release.Name ( .value.nameSuffix | default "" ) ) | quote }}
{{- end }}

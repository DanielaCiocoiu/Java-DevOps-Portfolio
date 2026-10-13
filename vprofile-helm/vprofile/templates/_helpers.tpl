{{/*
Expand the name of the chart
*/}}
{{- define "vprofile.fullname" -}}
{{- printf "%s-%s" .Release.Name .Chart.Name | trunc 63 | trimSuffix "-" -}}
{{- end -}}

{{/*
Common labels
*/}}
{{- define "vprofile.labels" -}}
app: {{ include "vprofile.fullname" . }}
chart: {{ .Chart.Name }}-{{ .Chart.Version | replace "+" "_" }}
release: {{ .Release.Name }}
heritage: {{ .Release.Service }}
{{- end -}}

{{/*
Image name and tag
*/}}
{{- define "vprofile.image" -}}
{{ .Values.image.repository }}:{{ .Values.image.tag | default .Chart.AppVersion }}
{{- end -}}

{{/*
Default service port
*/}}
{{- define "vprofile.servicePort" -}}
{{ .Values.servicePort | default 80 }}
{{- end -}}

{{/*
Default ingress host
*/}}
{{- define "vprofile.ingress.host" -}}
{{ .Values.ingress.host | default (printf "%s.%s" .Release.Name .Values.ingress.host) }}
{{- end -}}
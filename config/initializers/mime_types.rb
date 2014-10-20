# Be sure to restart your server when you modify this file.

# Add new mime types for use in respond_to blocks:
# Mime::Type.register "text/richtext", :rtf
# Allow ".foo" as an extension for files with the mime type "text/plain".
text_plain = MIME::Types["application/zip"].first
text_plain.extensions << "oce"
MIME::Types.index_extensions text_plain

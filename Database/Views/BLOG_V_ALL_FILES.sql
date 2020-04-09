--------------------------------------------------------
--  DDL for View BLOG_V_ALL_FILES
--------------------------------------------------------

  CREATE OR REPLACE FORCE VIEW "BLOG_V_ALL_FILES" ("ID", "ROW_VERSION", "CREATED_ON", "CREATED_BY", "CHANGED_ON", "CHANGED_BY", "IS_ACTIVE", "IS_DOWNLOAD", "FILE_PATH", "FILE_NAME", "FILE_LOCATION", "MIME_TYPE", "BLOB_CONTENT", "FILE_SIZE", "FILE_CHARSET", "FILE_DESC", "NOTES", "CURRENT_STATUS_CSS_CLASS", "DOWNLOAD_STATUS_CSS_CLASS") AS 
  select t1.id
  ,t1.row_version
  ,t1.created_on
  ,t1.created_by
  ,t1.changed_on
  ,t1.changed_by
  ,t1.is_active
  ,t1.is_download
  ,t1.file_path
  ,t1.file_name
  ,t1.file_location
  ,t1.mime_type
  ,t1.blob_content
  ,t1.file_size
  ,t1.file_charset
  ,t1.file_desc
  ,t1.notes
  ,case t1.is_active
  when 1
    then 'fa fa-toggle-on u-hot-text'
  when 0
    then 'fa fa-toggle-off'
  end as current_status_css_class
  ,case t1.is_download
  when 1
    then 'fa fa-toggle-on u-hot-text'
  when 0
    then 'fa fa-toggle-off'
  end as download_status_css_class
from blog_files t1
where 1 = 1
with read only
;

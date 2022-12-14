# -*- indent-tabs-mode: nil -*-
#
# Licensed to the Apache Software Foundation (ASF) under one
# or more contributor license agreements.  See the NOTICE file
# distributed with this work for additional information
# regarding copyright ownership.  The ASF licenses this file
# to you under the Apache License, Version 2.0 (the
# "License"); you may not use this file except in compliance
# with the License.  You may obtain a copy of the License at
#
#   http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing,
# software distributed under the License is distributed on an
# "AS IS" BASIS, WITHOUT WARRANTIES OR CONDITIONS OF ANY
# KIND, either express or implied.  See the License for the
# specific language governing permissions and limitations
# under the License.

package_id = 'arrow-flight-sql-glib'
package_name = 'Apache Arrow Flight SQL GLib'
entities_conf = configuration_data()
entities_conf.set('PACKAGE', package_id)
entities_conf.set('PACKAGE_BUGREPORT',
                  'https://issues.apache.org/jira/browse/ARROW')
entities_conf.set('PACKAGE_NAME', package_name)
entities_conf.set('PACKAGE_STRING',
                  ' '.join([package_id, version]))
entities_conf.set('PACKAGE_URL', 'https://arrow.apache.org/')
entities_conf.set('PACKAGE_VERSION', version)
configure_file(input: 'entities.xml.in',
               output: 'entities.xml',
               configuration: entities_conf)

private_headers = [
]

content_files = [
]

html_images = [
]

glib_prefix = dependency('glib-2.0').get_pkgconfig_variable('prefix')
glib_doc_path = join_paths(glib_prefix, 'share', 'gtk-doc', 'html')
arrow_glib_doc_path = join_paths(data_dir,
                                 'gtk-doc',
                                 'html',
                                 'arrow-glib')
arrow_flight_glib_doc_path = join_paths(data_dir,
                                        'gtk-doc',
                                        'html',
                                        'arrow-flight-glib')
doc_path = join_paths(data_dir, 'gtk-doc', 'html', package_id)

source_directories = [
  join_paths(meson.source_root(), package_id),
  join_paths(meson.build_root(), package_id),
]
dependencies = [
  arrow_glib,
  arrow_flight_glib,
  arrow_flight_sql_glib,
]
ignore_headers = []
gnome.gtkdoc(package_id,
             main_xml: package_id + '-docs.xml',
             src_dir: source_directories,
             dependencies: dependencies,
             ignore_headers: ignore_headers,
             gobject_typesfile: package_id + '.types',
             scan_args: [
               '--rebuild-types',
               '--deprecated-guards=GARROW_DISABLE_DEPRECATED',
             ],
             mkdb_args: [
               '--output-format=xml',
               '--name-space=gaflightsql',
               '--source-suffixes=c,cpp,h',
             ],
             fixxref_args: [
               '--html-dir=' + doc_path,
               '--extra-dir=' + join_paths(glib_doc_path, 'glib'),
               '--extra-dir=' + join_paths(glib_doc_path, 'gobject'),
               '--extra-dir=' + arrow_glib_doc_path,
               '--extra-dir=' + arrow_flight_glib_doc_path,
             ],
             html_assets: html_images,
             install: true)

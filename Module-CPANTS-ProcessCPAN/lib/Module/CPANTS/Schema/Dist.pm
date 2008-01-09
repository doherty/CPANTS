package Module::CPANTS::Schema::Dist;

use strict;
use warnings;

use base 'DBIx::Class';

__PACKAGE__->load_components("Core");
__PACKAGE__->table("dist");
__PACKAGE__->add_columns(
  "id",
  {
    data_type => "integer",
    default_value => "nextval('public.dist_id_seq'::text)",
    is_nullable => 0,
    size => 4,
  },
  "run",
  { data_type => "integer", default_value => undef, is_nullable => 1, size => 4 },
  "dist",
  {
    data_type => "text",
    default_value => undef,
    is_nullable => 1,
    size => undef,
  },
  "package",
  {
    data_type => "text",
    default_value => undef,
    is_nullable => 1,
    size => undef,
  },
  "vname",
  {
    data_type => "text",
    default_value => undef,
    is_nullable => 1,
    size => undef,
  },
  "author",
  { data_type => "integer", default_value => undef, is_nullable => 1, size => 4 },
  "version",
  {
    data_type => "text",
    default_value => undef,
    is_nullable => 1,
    size => undef,
  },
  "version_major",
  {
    data_type => "text",
    default_value => undef,
    is_nullable => 1,
    size => undef,
  },
  "version_minor",
  {
    data_type => "text",
    default_value => undef,
    is_nullable => 1,
    size => undef,
  },
  "extension",
  {
    data_type => "text",
    default_value => undef,
    is_nullable => 1,
    size => undef,
  },
  "extractable",
  { data_type => "integer", default_value => 0, is_nullable => 0, size => 4 },
  "extracts_nicely",
  { data_type => "integer", default_value => 0, is_nullable => 0, size => 4 },
  "size_packed",
  { data_type => "integer", default_value => 0, is_nullable => 0, size => 4 },
  "size_unpacked",
  { data_type => "integer", default_value => 0, is_nullable => 0, size => 4 },
  "released",
  {
    data_type => "timestamp without time zone",
    default_value => undef,
    is_nullable => 1,
    size => 8,
  },
  "files",
  { data_type => "integer", default_value => 0, is_nullable => 0, size => 4 },
  "files_list",
  {
    data_type => "text",
    default_value => undef,
    is_nullable => 1,
    size => undef,
  },
  "dirs",
  { data_type => "integer", default_value => 0, is_nullable => 0, size => 4 },
  "dirs_list",
  {
    data_type => "text",
    default_value => undef,
    is_nullable => 1,
    size => undef,
  },
  "symlinks",
  { data_type => "integer", default_value => 0, is_nullable => 0, size => 4 },
  "symlinks_list",
  {
    data_type => "text",
    default_value => undef,
    is_nullable => 1,
    size => undef,
  },
  "bad_permissions",
  { data_type => "integer", default_value => 0, is_nullable => 0, size => 4 },
  "bad_permissions_list",
  {
    data_type => "text",
    default_value => undef,
    is_nullable => 1,
    size => undef,
  },
  "file_makefile_pl",
  { data_type => "integer", default_value => 0, is_nullable => 0, size => 4 },
  "file_build_pl",
  { data_type => "integer", default_value => 0, is_nullable => 0, size => 4 },
  "file_readme",
  {
    data_type => "text",
    default_value => undef,
    is_nullable => 1,
    size => undef,
  },
  "file_manifest",
  { data_type => "integer", default_value => 0, is_nullable => 0, size => 4 },
  "file_meta_yml",
  { data_type => "integer", default_value => 0, is_nullable => 0, size => 4 },
  "file_signature",
  { data_type => "integer", default_value => 0, is_nullable => 0, size => 4 },
  "file_ninja",
  { data_type => "integer", default_value => 0, is_nullable => 0, size => 4 },
  "file_test_pl",
  { data_type => "integer", default_value => 0, is_nullable => 0, size => 4 },
  "file_changelog",
  {
    data_type => "text",
    default_value => undef,
    is_nullable => 1,
    size => undef,
  },
  "dir_lib",
  { data_type => "integer", default_value => 0, is_nullable => 0, size => 4 },
  "dir_t",
  { data_type => "integer", default_value => 0, is_nullable => 0, size => 4 },
  "dir_xt",
  { data_type => "integer", default_value => 0, is_nullable => 0, size => 4 },
  "broken_module_install",
  { data_type => "text", default_value => 0, is_nullable => 0, size => undef },
  "manifest_matches_dist",
  { data_type => "integer", default_value => 0, is_nullable => 0, size => 4 },
  "buildfile_executable",
  { data_type => "integer", default_value => 0, is_nullable => 0, size => 4 },
  "license",
  {
    data_type => "text",
    default_value => undef,
    is_nullable => 1,
    size => undef,
  },
  "metayml_is_parsable",
  { data_type => "integer", default_value => 0, is_nullable => 0, size => 4 },
  "file_license",
  { data_type => "integer", default_value => 0, is_nullable => 0, size => 4 },
  "needs_compiler",
  { data_type => "integer", default_value => 0, is_nullable => 0, size => 4 },
  "got_prereq_from",
  {
    data_type => "text",
    default_value => undef,
    is_nullable => 1,
    size => undef,
  },
  "is_core",
  { data_type => "integer", default_value => 0, is_nullable => 0, size => 4 },
  "error_prereq",
  {
    data_type => "text",
    default_value => undef,
    is_nullable => 1,
    size => undef,
  },
  "error_build_prereq",
  {
    data_type => "text",
    default_value => undef,
    is_nullable => 1,
    size => undef,
  },
  "error_manifest_matches_dist",
  {
    data_type => "text",
    default_value => undef,
    is_nullable => 1,
    size => undef,
  },
  "error_metaym",
  {
    data_type => "text",
    default_value => undef,
    is_nullable => 1,
    size => undef,
  },
  "error_cpants",
  {
    data_type => "text",
    default_value => undef,
    is_nullable => 1,
    size => undef,
  },
  "error_pod",
  { data_type => "integer", default_value => 0, is_nullable => 0, size => 4 },
  "errorsmsg_pod",
  {
    data_type => "text",
    default_value => undef,
    is_nullable => 1,
    size => undef,
  },
  "error_metayml_parse",
  {
    data_type => "text",
    default_value => undef,
    is_nullable => 1,
    size => undef,
  },
);
__PACKAGE__->set_primary_key("id");
__PACKAGE__->belongs_to("run", "Module::CPANTS::Schema::Run", { id => "run" });
__PACKAGE__->belongs_to("author", "Module::CPANTS::Schema::Author", { id => "author" });
__PACKAGE__->has_many(
  "history_dists",
  "Module::CPANTS::Schema::HistoryDist",
  { "foreign.dist" => "self.id" },
);
__PACKAGE__->has_many(
  "kwalitees",
  "Module::CPANTS::Schema::Kwalitee",
  { "foreign.dist" => "self.id" },
);
__PACKAGE__->has_many(
  "modules",
  "Module::CPANTS::Schema::Modules",
  { "foreign.dist" => "self.id" },
);
__PACKAGE__->has_many(
  "prereq_in_dists",
  "Module::CPANTS::Schema::Prereq",
  { "foreign.in_dist" => "self.id" },
);
__PACKAGE__->has_many(
  "prereq_dists",
  "Module::CPANTS::Schema::Prereq",
  { "foreign.dist" => "self.id" },
);
__PACKAGE__->has_many(
  "uses_dists",
  "Module::CPANTS::Schema::Uses",
  { "foreign.dist" => "self.id" },
);
__PACKAGE__->has_many(
  "uses_in_dists",
  "Module::CPANTS::Schema::Uses",
  { "foreign.in_dist" => "self.id" },
);


# Created by DBIx::Class::Schema::Loader v0.04002 @ 2007-12-29 23:19:31
# DO NOT MODIFY THIS OR ANYTHING ABOVE! md5sum:tHsoeFb+BNYSuEqr7bvNvw


# You can replace this text with custom content, and it will be preserved on regeneration
1;
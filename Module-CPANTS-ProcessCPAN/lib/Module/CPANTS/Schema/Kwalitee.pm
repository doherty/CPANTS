package Module::CPANTS::Schema::Kwalitee;

use strict;
use warnings;

use base 'DBIx::Class';

__PACKAGE__->load_components("ResultSetManager", "InflateColumn", "PK", "Core");
__PACKAGE__->table("kwalitee");
__PACKAGE__->add_columns(
  "id",
  {
    data_type => "integer",
    default_value => "nextval('kwalitee_id_seq'::regclass)",
    is_nullable => 0,
    size => 4,
  },
  "dist",
  { data_type => "integer", default_value => undef, is_nullable => 1, size => 4 },
  "abs_kw",
  { data_type => "integer", default_value => 0, is_nullable => 0, size => 4 },
  "abs_core_kw",
  { data_type => "integer", default_value => 0, is_nullable => 0, size => 4 },
  "kwalitee",
  { data_type => "numeric", default_value => 0, is_nullable => 0, size => "3,6" },
  "rel_core_kw",
  { data_type => "numeric", default_value => 0, is_nullable => 0, size => "3,6" },
  "extractable",
  { data_type => "integer", default_value => 0, is_nullable => 0, size => 4 },
  "extracts_nicely",
  { data_type => "integer", default_value => 0, is_nullable => 0, size => 4 },
  "has_version",
  { data_type => "integer", default_value => 0, is_nullable => 0, size => 4 },
  "has_proper_version",
  { data_type => "integer", default_value => 0, is_nullable => 0, size => 4 },
  "no_cpants_errors",
  { data_type => "integer", default_value => 0, is_nullable => 0, size => 4 },
  "has_readme",
  { data_type => "integer", default_value => 0, is_nullable => 0, size => 4 },
  "has_manifest",
  { data_type => "integer", default_value => 0, is_nullable => 0, size => 4 },
  "has_meta_yml",
  { data_type => "integer", default_value => 0, is_nullable => 0, size => 4 },
  "has_buildtool",
  { data_type => "integer", default_value => 0, is_nullable => 0, size => 4 },
  "has_changelog",
  { data_type => "integer", default_value => 0, is_nullable => 0, size => 4 },
  "no_symlinks",
  { data_type => "integer", default_value => 0, is_nullable => 0, size => 4 },
  "has_tests",
  { data_type => "integer", default_value => 0, is_nullable => 0, size => 4 },
  "proper_libs",
  { data_type => "integer", default_value => 0, is_nullable => 0, size => 4 },
  "is_prereq",
  { data_type => "integer", default_value => 0, is_nullable => 0, size => 4 },
  "use_strict",
  { data_type => "integer", default_value => 0, is_nullable => 0, size => 4 },
  "use_warnings",
  { data_type => "integer", default_value => 0, is_nullable => 0, size => 4 },
  "has_test_pod",
  { data_type => "integer", default_value => 0, is_nullable => 0, size => 4 },
  "has_test_pod_coverage",
  { data_type => "integer", default_value => 0, is_nullable => 0, size => 4 },
  "no_pod_errors",
  { data_type => "integer", default_value => 0, is_nullable => 0, size => 4 },
  "has_working_buildtool",
  { data_type => "integer", default_value => 0, is_nullable => 0, size => 4 },
  "manifest_matches_dist",
  { data_type => "integer", default_value => 0, is_nullable => 0, size => 4 },
  "has_example",
  { data_type => "integer", default_value => 0, is_nullable => 0, size => 4 },
  "buildtool_not_executable",
  { data_type => "integer", default_value => 0, is_nullable => 0, size => 4 },
  "has_humanreadable_license",
  { data_type => "integer", default_value => 0, is_nullable => 0, size => 4 },
  "metayml_is_parsable",
  { data_type => "integer", default_value => 0, is_nullable => 0, size => 4 },
  "metayml_conforms_spec_current",
  { data_type => "integer", default_value => 0, is_nullable => 0, size => 4 },
  "metayml_has_license",
  { data_type => "integer", default_value => 0, is_nullable => 0, size => 4 },
  "metayml_conforms_to_known_spec",
  { data_type => "integer", default_value => 0, is_nullable => 0, size => 4 },
  "has_license",
  { data_type => "integer", default_value => 0, is_nullable => 0, size => 4 },
  "prereq_matches_use",
  { data_type => "integer", default_value => 0, is_nullable => 0, size => 4 },
  "build_prereq_matches_use",
  { data_type => "integer", default_value => 0, is_nullable => 0, size => 4 },
  "no_generated_files",
  { data_type => "integer", default_value => 0, is_nullable => 0, size => 4 },
  "run",
  { data_type => "integer", default_value => undef, is_nullable => 1, size => 4 },
  "has_version_in_each_file",
  { data_type => "integer", default_value => 0, is_nullable => 0, size => 4 },
  "has_tests_in_t_dir",
  { data_type => "integer", default_value => 0, is_nullable => 0, size => 4 },
  "no_stdin_for_prompting",
  { data_type => "integer", default_value => 0, is_nullable => 0, size => 4 },
  "easily_repackageable_by_fedora",
  { data_type => "integer", default_value => 0, is_nullable => 0, size => 4 },
  "easily_repackageable_by_debian",
  { data_type => "integer", default_value => 0, is_nullable => 0, size => 4 },
  "easily_repackageable",
  { data_type => "integer", default_value => 0, is_nullable => 0, size => 4 },
  "fits_fedora_license",
  { data_type => "integer", default_value => 0, is_nullable => 0, size => 4 },
  "metayml_declares_perl_version",
  { data_type => "integer", default_value => 0, is_nullable => 0, size => 4 },
  "no_large_files",
  { data_type => "integer", default_value => undef, is_nullable => 1, size => 4 },
  "has_separate_license_file",
  { data_type => "integer", default_value => 0, is_nullable => 0, size => 4 },
  "has_license_in_source_file",
  { data_type => "integer", default_value => 0, is_nullable => 0, size => 4 },
  "metayml_has_provides",
  { data_type => "integer", default_value => 0, is_nullable => 0, size => 4 },
  "uses_test_nowarnings",
  { data_type => "integer", default_value => 0, is_nullable => 0, size => 4 },
  "latest_version_distributed_by_debian",
  { data_type => "integer", default_value => 0, is_nullable => 0, size => 4 },
  "has_no_bugs_reported_in_debian",
  { data_type => "integer", default_value => 0, is_nullable => 0, size => 4 },
  "has_no_patches_in_debian",
  { data_type => "integer", default_value => 0, is_nullable => 0, size => 4 },
  "distributed_by_debian",
  { data_type => "integer", default_value => 0, is_nullable => 0, size => 4 },
);
__PACKAGE__->set_primary_key("id");


# Created by DBIx::Class::Schema::Loader v0.04004 @ 2008-08-12 08:51:36
# DO NOT MODIFY THIS OR ANYTHING ABOVE! md5sum:kDaXSdPlPFDRo27r0crj3Q

__PACKAGE__->belongs_to("dist", "Module::CPANTS::Schema::Dist", { id => "dist" });

# You can replace this text with custom content, and it will be 
# preserved on regeneration
1;

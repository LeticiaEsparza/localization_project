project_name: "localization_testing"

# # Use local_dependency: To enable referencing of another project
# # on this instance with include: statements
#
# local_dependency: {
#   project: "name_of_other_project"
# }
localization_settings: {
  default_locale: en
  localization_level: permissive
}

# if a label or description string is defined in another locale strings file,
# if it is not defined in the default locale strings file then the Looker UI will display the unlocalized string.
# The default locale for your project is not to be confused with the default locale for Looker users.
# For the Locale user setting, Looker has an instance-wide default setting of “en”.
# If a Looker admin does not explicitly assign a user a Locale value, Looker automatically assigns the user to the “en” locale.

# Konveyor Release Notes Generator

**Requires `git` in your PATH**

Ensure you have copied your desired config to config.yml, which the ansible
will look for. The ansible is generic in that it expects a specific data structure
to the config, but separate configs can be written for different projects.
The ansible will iterate the repos, checkout the projects to a temporary location,
run a `git log` to produce a commit log for that repo, and append it to a release
notes file currently found at `../release_notes/<PROJECT>/release-<VERSION>.md`.

Example prep:

`cp crane.config.yml.example config.yml`

> NOTE: At least for Crane (MTC),  due to the way we've done our branches with
> our forks, not all of our repos contain the same branching format.

It's likely you'll need to tweak the config a bit for each release. In particular,
you will need to flip the `has_changes` setting to `true` or `false`. Many of
the Crane repos do not change between releases, hence the setting.

After you're happy with the configuration, can be run with the `run.sh` script,
no args necessary.

Once the script finishes, add and commit the newly output release notes file,
and submit a PR to the konveyor site!

tracker_packer (`tp`)
=====================

`tp` is a dead-simple command-line utility for importing story templates into
[Pivotal Tracker](http://pivotaltracker.com) to save precious time on
your agile project. I mean, think of the velocity for heaven's sake!

Usage:

    tp --token=blah --project=123 --file=stories.yml

will create stories in the project with ID of 123 based on the yaml
template file provided. Upon completion, the newly created story IDs
are displayed as output.

Sample yaml template file:

    ---
    - :current_state: unstarted
      :name: Provision server
    - :current_state: unstarted
      :name: Init git repo
    - :current_state: unstarted
      :name: Set gitosis permissions
    - :current_state: unstarted
      :name: Set vhost entry

Really the only thing you need to provide is a story name. You can
further customize and tailor your stories (or chores) by setting the
desired attributes. See the PT API docs for more info.

`tp` owes its simplicity to the wonderful [pivotal-tracker](https://github.com/jsmestad/pivotal-tracker) [gem](http://rubygems.org/gems/pivotal-tracker).

In fact, there's nothing more to `tp` than slurping in yaml, looping
and creating stories. This gem is overkill.

Getting Started
---------------

* Installing:

    `gem install tracker_packer`

* Retrieving API token:

    `curl -u $USERNAME:$PASSWORD -X GET https://www.pivotaltracker.com/services/v3/tokens/active`

Additional Information
----------------------

* Pivotal API v3 info: <https://www.pivotaltracker.com/help/api?version=v3>

* pivotal-tracker gem info: <http://rdoc.info/projects/jsmestad/pivotal-tracker>

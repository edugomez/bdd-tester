import json
import sys

from behave.configuration import Configuration
from six import StringIO

from bdd_tester.runner import DQRunner


def bdd_tester(filepath, features, **kwargs):
    default_output_path = 'output'

    # we'll add the behave args to this list
    command_args = []

    # disable the default summary
    command_args.append('--no-summary')

    # don't capture stdout. It doesn't matter, really...
    # but we don't need this (since we do it ourselves)
    command_args.append('--no-capture')

    # declare some custom formatters
    formatters = [
        'bdd_tester.formatters:DQSummaryFormatter',
        'bdd_tester.formatters:DQLogFormatter',
    ]
    for formatter in formatters:
        command_args += ['--format', formatter]

    # pass stuff to behave via user-defined variables
    if kwargs.get('today'):
        command_args += ['--define', 'today=' + kwargs.get('today')]
    if not kwargs.get('output_path'):
        output_path = default_output_path
    command_args += ['--define', 'output_path=' + output_path]

    save_summary = kwargs.get('save_summary', False)
    if save_summary:
        # specify the summary formatter output filename
        command_args += ['--outfile', 'summary.output']

    # specify the location of the test files (features)
    command_args += features

    if not save_summary:
        # capture output
        sys.stdout = StringIO()

    try:
        # create a config instance
        config = Configuration(command_args, load_config=False)

        # construct the runner!
        runner = DQRunner(config)

        # get this show on the road
        runner.start(filepath)

        if not save_summary:
            result = sys.stdout
            sys.stdout = sys.__stdout__
            # dump captured output
            return json.loads(result.getvalue())
    except:
        if not save_summary:
            result = sys.stdout
            sys.stdout = sys.__stdout__
            print(result.getvalue())
        raise

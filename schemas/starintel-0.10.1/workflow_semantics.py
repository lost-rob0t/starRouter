"""Reference semantic checks declared beside the supported core.star types.

Run after generated structural validation, alongside operation semantics.
"""
def validate_workflow_semantics(document):
    if document.get('dtype') == 'dataset-manifest':
        entries = document.get('countsByDtype', [])
        keys = [entry['key'] for entry in entries]
        if len(keys) != len(set(keys)):
            raise ValueError('$.countsByDtype: duplicate original map key')

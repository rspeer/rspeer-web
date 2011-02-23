from hyde.plugin import Plugin
from datetime import datetime

def xmldatetime(dt):
    return dt.strftime("%Y-%m-%dT%H:%M:%S")

class DateTimePlugin(Plugin):
    def template_loaded(self, template):
        Plugin.template_loaded(self, template)
        template.env.globals['now'] = datetime.now()
        template.env.globals['xmldatetime'] = xmldatetime
    

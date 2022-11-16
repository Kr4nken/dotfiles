import subprocess
import os
from qutebrowser.api import interceptor

"""
qutebrowser settings for video
for more settings check out
https://qutebrowser.org/doc/help/settings.html
"""

# ================== Youtube Add Blocking ======================= {{{
def filter_yt(info: interceptor.Request):
    """Block the given request if necessary."""
    url = info.request_url
    if (
        url.host() == "www.youtube.com"
        and url.path() == "/get_video_info"
        and "&adformat=" in url.query()
    ):
        info.block()


interceptor.register(filter_yt)
# }}}
c.tabs.show = "never"
c.statusbar.show = "never"
c.colors.webpage.darkmode.enabled = True
c.colors.webpage.preferred_color_scheme = "dark" 
c.colors.webpage.darkmode.algorithm = 'lightness-hsl'
c.colors.webpage.darkmode.contrast = -.022
c.colors.webpage.darkmode.threshold.text = 150
c.colors.webpage.darkmode.threshold.background = 100
c.colors.webpage.darkmode.policy.images = "always"
c.colors.webpage.darkmode.grayscale.images = 0.35
config.load_autoconfig()

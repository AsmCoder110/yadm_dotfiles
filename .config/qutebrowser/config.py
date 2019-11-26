config.load_autoconfig()
c.auto_save.session = True
config.bind(',js', 'open -t https://jisho.org')
config.bind(';cr', 'open -t https://en.cppreference.com')
config.bind(',wp', 'open -t https://www.reddit.com/r/wallpaper')
config.bind(',pc', 'open -t https://www.reddit.com/r/programmingcirclejerk')
config.bind(',gh', 'open -t https://github.com')
config.bind(',tr', 'open -t https://nitrotype.com/race')
config.bind(',kh', 'open -t https://www.keyhero.com/free-typing-test')
config.bind(',cm', 'open -t https://cmake.org/cmake/help/latest/')
config.bind(',ra', 'spawn --userscript readability')
config.bind(',v' , 'spawn --userscript view_in_mpv')
config.bind('e', 'hint links spawn --userscript /home/asmcoder/.config/qutebrowser/userscripts/view_in_mpv {hint-url}')

c.fonts.web.family.fantasy = 'SourceHanSansJP-Medium'
c.fonts.web.family.standard = 'SourceHanSansJP-Medium'
c.fonts.web.family.cursive = 'SourceHanSansJP-Medium'
c.fonts.web.family.sans_serif = 'SourceHanSansJP-Medium'
c.fonts.web.family.serif = 'SourceHanSansJP-Medium'
c.fonts.web.family.fixed = 'SourceHanSansJP-Medium'
c.fonts.hints = '12pt SourceHanSansJP-Bold'
c.fonts.prompts = 'SourceHanSansJP-Medium'


c.content.proxy='system'
c.scrolling.smooth = True
c.content.headers.do_not_track = True
c.downloads.remove_finished = 0
c.downloads.location.prompt = False
c.downloads.location.remember = False
c.content.webrtc_ip_handling_policy = 'disable-non-proxied-udp'
c.content.headers.user_agent='Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/75.0.3770.100 Safari/537.36'
config.unbind("gd", mode='normal')
config.bind(
    'gd', 'set downloads.location.directory ~/Downloads ;; hint links download')

c.url.searchengines['gh']  = 'https://github.com/search?q={}'
c.url.searchengines['ad']  = 'https://developer.android.com/s/results/?q={}'
c.url.searchengines['gl']  = 'https://gitlab.com/search?search={}'
c.url.searchengines['od']  = 'https://www.google.com/search?q={}+intitle:%22index%20of%22%20-inurl:(jsp%7Cpl%7Cphp%7Chtml%7Caspx%7Chtm%7Ccf%7Cshtml)%20-inurl:(listen77%7Cmp3raid%7Cmp3toss%7Cmp3drug%7Cindex_of%7Cwallywashis)'

c.url.searchengines['cpp']  = 'en.cppreference.com/mwiki/index.php?search={}'

c.url.searchengines['r']   = 'https://www.reddit.com/search?q={}'
c.url.searchengines['r/']  = 'https://www.reddit.com/r/{}'
c.url.searchengines['r/w'] = 'https://www.reddit.com/r/{}/wiki'
c.url.searchengines['u/']  = 'https://www.reddit.com/u/{}'

c.url.searchengines['j']   = 'https://www.jisho.org/search/{}'

c.url.searchengines['y']   = 'https://www.youtube.com/results?search_query={}'
c.url.searchengines['gt']   = 'https://translate.google.com/#view=home&op=translate&sl=auto&tl=en&text={}'
c.url.searchengines['ka'] = 'https://app.kanjialive.com/{}'

c.url.searchengines['w']   = 'https://en.wikipedia.org/w/index.php?search={}'
c.url.searchengines['wit'] = 'https://it.wikipedia.org/w/index.php?search={}'
c.url.searchengines['wk'] = 'https://en.wiktionary.org/wiki/{}'

c.url.searchengines['wr']  = 'http://www.wordreference.com/redirect/translation.aspx?w={}&dict=enit'

c.url.searchengines['aw']  = 'https://wiki.archlinux.org/index.php?search={}'
c.url.searchengines['aur'] = 'https://aur.archlinux.org/packages/?K={}'
c.url.searchengines['pm']  = 'https://www.archlinux.org/packages/?q={}'

c.url.searchengines['doc']    = 'https://devdocs.io/#q={}'
c.url.searchengines['rsdoc']  = 'https://doc.rust-lang.org/std/?search={}'
c.url.searchengines['rsbook'] = 'https://doc.rust-lang.org/book/second-edition/?search={}'
c.url.searchengines['cargo']  = 'https://crates.io/search?q={}'

c.url.searchengines['nh'] = 'https://nethackwiki.com/mediawiki/index.php?search={}'

c.aliases['q'] = 'quit --save'

c.content.mute = True
c.content.host_blocking.lists = ["https://raw.githubusercontent.com/StevenBlack/hosts/master/hosts", "https://raw.githubusercontent.com/anudeepND/youtubeadsblacklist/master/hosts.txt", "https://raw.githubusercontent.com/kbinani/adblock-youtube-ads/master/signed.txt"]
c.content.javascript.enabled = False
c.content.cookies.accept='no-3rdparty'
c.content.cookies.store=True
config.set('content.javascript.enabled', True, 'https://mesonbuild.com')
config.set('content.javascript.enabled', True, 'https://github.com')
config.set('content.javascript.enabled', True, 'https://gitlab.com')
config.set('content.javascript.enabled', True, 'https://duckduckgo.com')
config.set('content.javascript.enabled', True, 'https://www.youtube.com')
config.set('content.javascript.enabled', True, 'https://developer.android.com')
config.set('content.javascript.enabled', True, 'https://*.stackexchange.com')
config.set('content.javascript.enabled', True, 'https://jisho.org')
config.set('content.javascript.enabled', True, 'https://*.keyhero.com')
config.set('content.javascript.enabled', True, 'https://www.reddit.com')
config.set('content.javascript.enabled', True, 'https://translate.google.com')
config.set('content.javascript.enabled', True, 'https://gcc.godbolt.org')

# Keep the hints consistent.
c.colors.hints.bg = 'black'
c.colors.hints.fg = 'white'

#config.set('content.user_stylesheets', ['./custom_solarized.css', './solarized-dark.css'], '*://github.com')
#config.set('content.user_stylesheets', ['./custom_solarized.css', './solarized-dark.css'], '*://stackoverflow.com')
#config.set('content.user_stylesheets', ['./custom_solarized.css', './solarized-dark.css'], '*://en.wiktionary.org')
#config.set('content.user_stylesheets', ['./custom_solarized.css', './solarized-dark.css'], '*://wiki.archliinux.org')
#config.set('content.user_stylesheets', ['./custom_solarized.css', './solarized-dark.css'], '*://en.cppreference.com')
#config.set('content.user_stylesheets', ['./custom_solarized.css', './solarized-dark.css'], '*://*.duckduckgo.com')

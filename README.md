# pwr

## Summary

pwr (paced web reader) is a script and terminal-centric workflow I use for
keeping up to date with various sources online, shared on the off chance it's
useful to you too.

See its [page on Muxup.com](https://muxup.com/pwr) for more information about
why it exists and how to use it.

## Implementation details

* Ships with an example list of sources and "fetchers" (functions that will
  return extracted URLs and titles). This includes examples of using
  BeautifulSoup to extract from HTML in cases where RSS feeds are not present
  or are insufficient.
* Data is stored in JSON in `$XDG_DATA_HOME/.local/share/pwr`. It does assume
  Python 3.6+ dictionary semantics of entries being maintained in insertion
  order.
* Supporting fetching data from multiple sources in parallel is an obvious
  extension. It simply hasn't been slow enough so far to make it worth
  prioritising.
* Caching of RSS feeds and similar isn't implemented. This is fine if you're
  running it once every day or so as intended, but if you're looking to run it
  more regularly you should add improvements in that area.
* pwr is a quick script that scratches an itch. It's definitely not the
  world's most robust or clean Python code.

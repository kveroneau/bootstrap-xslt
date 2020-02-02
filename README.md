# bootstrap-xslt
Modern Twitter Bootstrap framework in XSLT

### You are probably wondering, why?

XSLT is an XML transformation language, and currently renders in modern 2020 web browsers, including Microsoft's new Chromium-based Edge browser.
It does not seem like client-side browser support for XSLT is going away anytime soon.  XSLT provides a browser-native way to have your content separate from
your page logic.  In this bootstrap-xslt project, it allows you to abstract your content from the underlying CSS framework.  In theory, you should be-able to
write your entire website in pure XML, and use these XSLT stylesheets to use bootstrap 4.4 today, and easily move to another CSS framework tomorrow with just
a simple change to what XSLT stylesheet you are using.

XSLT transformation also allows for much faster page loads, as your entire presentation layer is cached as a XSLT stylesheet.  Your website only needs to transfer
the content in the form of an XML file.  This might not mean much in a world where most people have gigabit Internet connection speeds, and super computers in
their pockets.  However, in the long term, it will cost a lot less to scale if you are just needing to send content, and not the entire site template each
request.

Yes, I understand that single page frameworks such as Angluar, React, and Vue.JS are attempting to mitigate the server-load in a similar way.  This project isn't
aiming to replace those single page frameworks, if you are building an application for the web, a single page framework is the way to go.  However, if you are
developing a multi-page website, such as a publication, online documentation/help system, or something which depends more on content and not functionality, this might be a good choice.  It is very lightweight, supported in modern web browsers, and allows the site's template to be swapped out as long as the XML pages match the specs of the new stylesheets being applied.

My goal in designing the XML template is to make it as abstracted as possible from the underlying CSS framework.  Future XSLT template frameworks I put out into
the wild will utilize the same XML template standard, allows users of this bootstrap-xslt template to easily migrate to another solution down the road
effortlessly if needed.

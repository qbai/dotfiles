


<!DOCTYPE html>
<html lang="en" class=" is-copy-enabled">
  <head prefix="og: http://ogp.me/ns# fb: http://ogp.me/ns/fb# object: http://ogp.me/ns/object# article: http://ogp.me/ns/article# profile: http://ogp.me/ns/profile#">
    <meta charset='utf-8'>
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta http-equiv="Content-Language" content="en">
    
    
    <title>emacs/cl-lib.el at master · emacs-mirror/emacs</title>
    <link rel="search" type="application/opensearchdescription+xml" href="/opensearch.xml" title="GitHub">
    <link rel="fluid-icon" href="https://github.com/fluidicon.png" title="GitHub">
    <link rel="apple-touch-icon" sizes="57x57" href="/apple-touch-icon-114.png">
    <link rel="apple-touch-icon" sizes="114x114" href="/apple-touch-icon-114.png">
    <link rel="apple-touch-icon" sizes="72x72" href="/apple-touch-icon-144.png">
    <link rel="apple-touch-icon" sizes="144x144" href="/apple-touch-icon-144.png">
    <meta property="fb:app_id" content="1401488693436528">

      <meta content="@github" name="twitter:site" /><meta content="summary" name="twitter:card" /><meta content="emacs-mirror/emacs" name="twitter:title" /><meta content="emacs - Mirror of GNU Emacs" name="twitter:description" /><meta content="https://avatars2.githubusercontent.com/u/8382104?v=3&amp;s=400" name="twitter:image:src" />
      <meta content="GitHub" property="og:site_name" /><meta content="object" property="og:type" /><meta content="https://avatars2.githubusercontent.com/u/8382104?v=3&amp;s=400" property="og:image" /><meta content="emacs-mirror/emacs" property="og:title" /><meta content="https://github.com/emacs-mirror/emacs" property="og:url" /><meta content="emacs - Mirror of GNU Emacs" property="og:description" />
      <meta name="browser-stats-url" content="https://api.github.com/_private/browser/stats">
    <meta name="browser-errors-url" content="https://api.github.com/_private/browser/errors">
    <link rel="assets" href="https://assets-cdn.github.com/">
    <link rel="web-socket" href="wss://live.github.com/_sockets/MzQ2MTM5ODo5Y2Y2NDMyOGZkNWYwNTk1ZGM4NGQ4OTJmNzhlMjRiNjpjNDg2ZDAzOWIyZDg1MmFkOTY0MDgwMjQyODUzZTNiYzllMjIwYjg2NzJiM2I0ZjcyMTdmMjNlZjJkN2U3NGVi--255835ebf7821c78c46dbfdd0ba434197131b26d">
    <meta name="pjax-timeout" content="1000">
    <link rel="sudo-modal" href="/sessions/sudo_modal">

    <meta name="msapplication-TileImage" content="/windows-tile.png">
    <meta name="msapplication-TileColor" content="#ffffff">
    <meta name="selected-link" value="repo_source" data-pjax-transient>
      <meta name="google-analytics" content="UA-3769691-2">

    <meta content="collector.githubapp.com" name="octolytics-host" /><meta content="collector-cdn.github.com" name="octolytics-script-host" /><meta content="github" name="octolytics-app-id" /><meta content="CA2D81B8:67D3:431200:558282FD" name="octolytics-dimension-request_id" /><meta content="3461398" name="octolytics-actor-id" /><meta content="qbai" name="octolytics-actor-login" /><meta content="308abd3419b267c7bcfd5885e1003ecf3df74e4e7e7ceb26cbacc714e7f4af71" name="octolytics-actor-hash" />
    
    <meta content="Rails, view, blob#show" name="analytics-event" />
    <meta class="js-ga-set" name="dimension1" content="Logged In">
    <meta name="is-dotcom" content="true">
      <meta name="hostname" content="github.com">
    <meta name="user-login" content="qbai">

      <link rel="icon" sizes="any" mask href="https://assets-cdn.github.com/pinned-octocat.svg">
      <meta name="theme-color" content="#4078c0">
      <link rel="icon" type="image/x-icon" href="https://assets-cdn.github.com/favicon.ico">


    <meta content="authenticity_token" name="csrf-param" />
<meta content="SeIYmZdjh0IsTlQgB+itHV7rxwkNvUs9+/o7EKzvzzxeew9s4Oa3l3BmuSF9AV87ixIyMuqs3PwnVdu4SDUXSQ==" name="csrf-token" />

    <link crossorigin="anonymous" href="https://assets-cdn.github.com/assets/github/index-f7c9dec0fe8f88d1ae00035e973f4102ed2166b1e269f3333f92c91413d85670.css" media="all" rel="stylesheet" />
    <link crossorigin="anonymous" href="https://assets-cdn.github.com/assets/github2/index-0d569068eabc0305b93b246950eb913fc9d2948b952824895172164835b351dd.css" media="all" rel="stylesheet" />
    
    


    <meta http-equiv="x-pjax-version" content="c24a01908c443388f88adc6a07627a49">

      
  <meta name="description" content="emacs - Mirror of GNU Emacs">
  <meta name="go-import" content="github.com/emacs-mirror/emacs git https://github.com/emacs-mirror/emacs.git">

  <meta content="8382104" name="octolytics-dimension-user_id" /><meta content="emacs-mirror" name="octolytics-dimension-user_login" /><meta content="22711712" name="octolytics-dimension-repository_id" /><meta content="emacs-mirror/emacs" name="octolytics-dimension-repository_nwo" /><meta content="true" name="octolytics-dimension-repository_public" /><meta content="false" name="octolytics-dimension-repository_is_fork" /><meta content="22711712" name="octolytics-dimension-repository_network_root_id" /><meta content="emacs-mirror/emacs" name="octolytics-dimension-repository_network_root_nwo" />
  <link href="https://github.com/emacs-mirror/emacs/commits/master.atom" rel="alternate" title="Recent Commits to emacs:master" type="application/atom+xml">

  </head>


  <body class="logged_in  env-production windows vis-public mirror  page-blob">
    <a href="#start-of-content" tabindex="1" class="accessibility-aid js-skip-to-content">Skip to content</a>
    <div class="wrapper">
      
      
      


        <div class="header header-logged-in true" role="banner">
  <div class="container clearfix">

    <a class="header-logo-invertocat" href="https://github.com/" data-hotkey="g d" aria-label="Homepage" data-ga-click="Header, go to dashboard, icon:logo">
  <span class="mega-octicon octicon-mark-github"></span>
</a>


      <div class="site-search repo-scope js-site-search" role="search">
          <form accept-charset="UTF-8" action="/emacs-mirror/emacs/search" class="js-site-search-form" data-global-search-url="/search" data-repo-search-url="/emacs-mirror/emacs/search" method="get"><div style="margin:0;padding:0;display:inline"><input name="utf8" type="hidden" value="&#x2713;" /></div>
  <label class="js-chromeless-input-container form-control">
    <div class="scope-badge">This repository</div>
    <input type="text"
      class="js-site-search-focus js-site-search-field is-clearable chromeless-input"
      data-hotkey="s"
      name="q"
      placeholder="Search"
      data-global-scope-placeholder="Search GitHub"
      data-repo-scope-placeholder="Search"
      tabindex="1"
      autocapitalize="off">
  </label>
</form>
      </div>

      <ul class="header-nav left" role="navigation">
        <li class="header-nav-item">
          <a href="/pulls" class="js-selected-navigation-item header-nav-link" data-ga-click="Header, click, Nav menu - item:pulls context:user" data-hotkey="g p" data-selected-links="/pulls /pulls/assigned /pulls/mentioned /pulls">
            Pull requests
</a>        </li>
        <li class="header-nav-item">
          <a href="/issues" class="js-selected-navigation-item header-nav-link" data-ga-click="Header, click, Nav menu - item:issues context:user" data-hotkey="g i" data-selected-links="/issues /issues/assigned /issues/mentioned /issues">
            Issues
</a>        </li>
          <li class="header-nav-item">
            <a class="header-nav-link" href="https://gist.github.com" data-ga-click="Header, go to gist, text:gist">Gist</a>
          </li>
      </ul>

    
<ul class="header-nav user-nav right" id="user-links">
  <li class="header-nav-item">
      <span class="js-socket-channel js-updatable-content"
        data-channel="notification-changed:qbai"
        data-url="/notifications/header">
      <a href="/notifications" aria-label="You have no unread notifications" class="header-nav-link notification-indicator tooltipped tooltipped-s" data-ga-click="Header, go to notifications, icon:read" data-hotkey="g n">
          <span class="mail-status all-read"></span>
          <span class="octicon octicon-inbox"></span>
</a>  </span>

  </li>

  <li class="header-nav-item dropdown js-menu-container">
    <a class="header-nav-link tooltipped tooltipped-s js-menu-target" href="/new"
       aria-label="Create new..."
       data-ga-click="Header, create new, icon:add">
      <span class="octicon octicon-plus left"></span>
      <span class="dropdown-caret"></span>
    </a>

    <div class="dropdown-menu-content js-menu-content">
      <ul class="dropdown-menu dropdown-menu-sw">
        
<a class="dropdown-item" href="/new" data-ga-click="Header, create new repository">
  New repository
</a>


  <a class="dropdown-item" href="/organizations/new" data-ga-click="Header, create new organization">
    New organization
  </a>




      </ul>
    </div>
  </li>

  <li class="header-nav-item dropdown js-menu-container">
    <a class="header-nav-link name tooltipped tooltipped-s js-menu-target" href="#"
       aria-label="View profile and more"
       data-ga-click="Header, show menu, icon:avatar">
      <img alt="@qbai" class="avatar" height="20" src="https://avatars0.githubusercontent.com/u/3461398?v=3&amp;s=40" width="20" />
      <span class="dropdown-caret"></span>
    </a>

    <div class="dropdown-menu-content js-menu-content">
      <div class="dropdown-menu dropdown-menu-sw">
        <div class="dropdown-header header-nav-current-user css-truncate">
          Signed in as <strong class="css-truncate-target">qbai</strong>
        </div>
        <div class="dropdown-divider"></div>

        <a class="dropdown-item" href="/qbai" data-ga-click="Header, go to profile, text:your profile">
          Your profile
        </a>
        <a class="dropdown-item" href="/stars" data-ga-click="Header, go to starred repos, text:your stars">
          Your stars
        </a>
        <a class="dropdown-item" href="/explore" data-ga-click="Header, go to explore, text:explore">
          Explore
        </a>
        <a class="dropdown-item" href="https://help.github.com" data-ga-click="Header, go to help, text:help">
          Help
        </a>
        <div class="dropdown-divider"></div>


        <a class="dropdown-item" href="/settings/profile" data-ga-click="Header, go to settings, icon:settings">
          Settings
        </a>

        <form accept-charset="UTF-8" action="/logout" class="logout-form" method="post"><div style="margin:0;padding:0;display:inline"><input name="utf8" type="hidden" value="&#x2713;" /><input name="authenticity_token" type="hidden" value="+p0QBk1Bj2HBLzzFwsJcMZkeaKR8ddHMygaub6K+XqtQ8YWGHLHRH5wSHKnFUltW7Lmey/td3OQMnFD7yk55Xg==" /></div>
          <button class="dropdown-item dropdown-signout" data-ga-click="Header, sign out, icon:logout">
            Sign out
          </button>
</form>      </div>
    </div>
  </li>
</ul>


    
  </div>
</div>

        

        


      <div id="start-of-content" class="accessibility-aid"></div>
          <div class="site" itemscope itemtype="http://schema.org/WebPage">
    <div id="js-flash-container">
      
    </div>
    <div class="pagehead repohead instapaper_ignore readability-menu">
      <div class="container">

        
<ul class="pagehead-actions">

  <li>
      <form accept-charset="UTF-8" action="/notifications/subscribe" class="js-social-container" data-autosubmit="true" data-remote="true" method="post"><div style="margin:0;padding:0;display:inline"><input name="utf8" type="hidden" value="&#x2713;" /><input name="authenticity_token" type="hidden" value="pRURN1wwc5OjIOZhtKH3q0K/suyldmqvOTFm/vna9vb65mFYn3acRLV1h6LeaO5BOuo7I5eJYGijjocgI6GgDA==" /></div>    <input id="repository_id" name="repository_id" type="hidden" value="22711712" />

      <div class="select-menu js-menu-container js-select-menu">
        <a href="/emacs-mirror/emacs/subscription"
          class="btn btn-sm btn-with-count select-menu-button js-menu-target" role="button" tabindex="0" aria-haspopup="true"
          data-ga-click="Repository, click Watch settings, action:blob#show">
          <span class="js-select-button">
            <span class="octicon octicon-eye"></span>
            Watch
          </span>
        </a>
        <a class="social-count js-social-count" href="/emacs-mirror/emacs/watchers">
          59
        </a>

        <div class="select-menu-modal-holder">
          <div class="select-menu-modal subscription-menu-modal js-menu-content" aria-hidden="true">
            <div class="select-menu-header">
              <span class="select-menu-title">Notifications</span>
              <span class="octicon octicon-x js-menu-close" role="button" aria-label="Close"></span>
            </div>

            <div class="select-menu-list js-navigation-container" role="menu">

              <div class="select-menu-item js-navigation-item selected" role="menuitem" tabindex="0">
                <span class="select-menu-item-icon octicon octicon-check"></span>
                <div class="select-menu-item-text">
                  <input checked="checked" id="do_included" name="do" type="radio" value="included" />
                  <span class="select-menu-item-heading">Not watching</span>
                  <span class="description">Be notified when participating or @mentioned.</span>
                  <span class="js-select-button-text hidden-select-button-text">
                    <span class="octicon octicon-eye"></span>
                    Watch
                  </span>
                </div>
              </div>

              <div class="select-menu-item js-navigation-item " role="menuitem" tabindex="0">
                <span class="select-menu-item-icon octicon octicon octicon-check"></span>
                <div class="select-menu-item-text">
                  <input id="do_subscribed" name="do" type="radio" value="subscribed" />
                  <span class="select-menu-item-heading">Watching</span>
                  <span class="description">Be notified of all conversations.</span>
                  <span class="js-select-button-text hidden-select-button-text">
                    <span class="octicon octicon-eye"></span>
                    Unwatch
                  </span>
                </div>
              </div>

              <div class="select-menu-item js-navigation-item " role="menuitem" tabindex="0">
                <span class="select-menu-item-icon octicon octicon-check"></span>
                <div class="select-menu-item-text">
                  <input id="do_ignore" name="do" type="radio" value="ignore" />
                  <span class="select-menu-item-heading">Ignoring</span>
                  <span class="description">Never be notified.</span>
                  <span class="js-select-button-text hidden-select-button-text">
                    <span class="octicon octicon-mute"></span>
                    Stop ignoring
                  </span>
                </div>
              </div>

            </div>

          </div>
        </div>
      </div>
</form>
  </li>

  <li>
    
  <div class="js-toggler-container js-social-container starring-container ">

    <form accept-charset="UTF-8" action="/emacs-mirror/emacs/unstar" class="js-toggler-form starred js-unstar-button" data-remote="true" method="post"><div style="margin:0;padding:0;display:inline"><input name="utf8" type="hidden" value="&#x2713;" /><input name="authenticity_token" type="hidden" value="Urz0XargdE4TTJkaYoqs05orQS8wa07LlJeyOAhgaZ96iCSkWsaSpwJ5hDTBHocz2cGBXRVWIK7mIulE+ESJpw==" /></div>
      <button
        class="btn btn-sm btn-with-count js-toggler-target"
        aria-label="Unstar this repository" title="Unstar emacs-mirror/emacs"
        data-ga-click="Repository, click unstar button, action:blob#show; text:Unstar">
        <span class="octicon octicon-star"></span>
        Unstar
      </button>
        <a class="social-count js-social-count" href="/emacs-mirror/emacs/stargazers">
          275
        </a>
</form>
    <form accept-charset="UTF-8" action="/emacs-mirror/emacs/star" class="js-toggler-form unstarred js-star-button" data-remote="true" method="post"><div style="margin:0;padding:0;display:inline"><input name="utf8" type="hidden" value="&#x2713;" /><input name="authenticity_token" type="hidden" value="KaRo6+MJo0T0KYA5PL2LUBiIlghLCMu/Rzr77B916VzgCgmoSWQJ7Yp6ZLOc/3cJiuDulOY+AJUYPmB9O5RzyA==" /></div>
      <button
        class="btn btn-sm btn-with-count js-toggler-target"
        aria-label="Star this repository" title="Star emacs-mirror/emacs"
        data-ga-click="Repository, click star button, action:blob#show; text:Star">
        <span class="octicon octicon-star"></span>
        Star
      </button>
        <a class="social-count js-social-count" href="/emacs-mirror/emacs/stargazers">
          275
        </a>
</form>  </div>

  </li>

        <li>
          <form accept-charset="UTF-8" action="/emacs-mirror/emacs/fork" method="post"><div style="margin:0;padding:0;display:inline"><input name="utf8" type="hidden" value="&#x2713;" /><input name="authenticity_token" type="hidden" value="A4YcC2lBHBUe4wkl/L7VUQvqaYoMb7nm8bsIS3keNoM7H4T24TMX8ucEgAQiAi39OJBKIX/R3abrKX/EqtF/mw==" /></div>
            <button
                type="submit"
                class="btn btn-sm btn-with-count"
                data-ga-click="Repository, show fork modal, action:blob#show; text:Fork"
                title="Fork your own copy of emacs-mirror/emacs to your account"
                aria-label="Fork your own copy of emacs-mirror/emacs to your account">
              <span class="octicon octicon-repo-forked"></span>
              Fork
            </button>
            <a href="/emacs-mirror/emacs/network" class="social-count">110</a>
</form>        </li>

</ul>

        <h1 itemscope itemtype="http://data-vocabulary.org/Breadcrumb" class="entry-title public">
          <span class="mega-octicon octicon-mirror"></span>
          <span class="author"><a href="/emacs-mirror" class="url fn" itemprop="url" rel="author"><span itemprop="title">emacs-mirror</span></a></span><!--
       --><span class="path-divider">/</span><!--
       --><strong><a href="/emacs-mirror/emacs" data-pjax="#js-repo-pjax-container">emacs</a></strong>

          <span class="page-context-loader">
            <img alt="" height="16" src="https://assets-cdn.github.com/images/spinners/octocat-spinner-32.gif" width="16" />
          </span>

            <span class="mirror-flag">
              <span class="text">mirrored from <a href="git://git.sv.gnu.org/emacs.git">git://git.sv.gnu.org/emacs.git</a></span>
            </span>
        </h1>
      </div><!-- /.container -->
    </div><!-- /.repohead -->

    <div class="container">
      <div class="repository-with-sidebar repo-container new-discussion-timeline  ">
        <div class="repository-sidebar clearfix">
            
<nav class="sunken-menu repo-nav js-repo-nav js-sidenav-container-pjax js-octicon-loaders"
     role="navigation"
     data-pjax="#js-repo-pjax-container"
     data-issue-count-url="/emacs-mirror/emacs/issues/counts">
  <ul class="sunken-menu-group">
    <li class="tooltipped tooltipped-w" aria-label="Code">
      <a href="/emacs-mirror/emacs" aria-label="Code" class="selected js-selected-navigation-item sunken-menu-item" data-hotkey="g c" data-selected-links="repo_source repo_downloads repo_commits repo_releases repo_tags repo_branches /emacs-mirror/emacs">
        <span class="octicon octicon-code"></span> <span class="full-word">Code</span>
        <img alt="" class="mini-loader" height="16" src="https://assets-cdn.github.com/images/spinners/octocat-spinner-32.gif" width="16" />
</a>    </li>


    <li class="tooltipped tooltipped-w" aria-label="Pull requests">
      <a href="/emacs-mirror/emacs/pulls" aria-label="Pull requests" class="js-selected-navigation-item sunken-menu-item" data-hotkey="g p" data-selected-links="repo_pulls /emacs-mirror/emacs/pulls">
          <span class="octicon octicon-git-pull-request"></span> <span class="full-word">Pull requests</span>
          <span class="js-pull-replace-counter"></span>
          <img alt="" class="mini-loader" height="16" src="https://assets-cdn.github.com/images/spinners/octocat-spinner-32.gif" width="16" />
</a>    </li>

  </ul>
  <div class="sunken-menu-separator"></div>
  <ul class="sunken-menu-group">

    <li class="tooltipped tooltipped-w" aria-label="Pulse">
      <a href="/emacs-mirror/emacs/pulse" aria-label="Pulse" class="js-selected-navigation-item sunken-menu-item" data-selected-links="pulse /emacs-mirror/emacs/pulse">
        <span class="octicon octicon-pulse"></span> <span class="full-word">Pulse</span>
        <img alt="" class="mini-loader" height="16" src="https://assets-cdn.github.com/images/spinners/octocat-spinner-32.gif" width="16" />
</a>    </li>

    <li class="tooltipped tooltipped-w" aria-label="Graphs">
      <a href="/emacs-mirror/emacs/graphs" aria-label="Graphs" class="js-selected-navigation-item sunken-menu-item" data-selected-links="repo_graphs repo_contributors /emacs-mirror/emacs/graphs">
        <span class="octicon octicon-graph"></span> <span class="full-word">Graphs</span>
        <img alt="" class="mini-loader" height="16" src="https://assets-cdn.github.com/images/spinners/octocat-spinner-32.gif" width="16" />
</a>    </li>
  </ul>


</nav>

              <div class="only-with-full-nav">
                  
<div class="js-clone-url clone-url open"
  data-protocol-type="http">
  <h3><span class="text-emphasized">HTTPS</span> clone URL</h3>
  <div class="input-group js-zeroclipboard-container">
    <input type="text" class="input-mini input-monospace js-url-field js-zeroclipboard-target"
           value="https://github.com/emacs-mirror/emacs.git" readonly="readonly">
    <span class="input-group-button">
      <button aria-label="Copy to clipboard" class="js-zeroclipboard btn btn-sm zeroclipboard-button tooltipped tooltipped-s" data-copied-hint="Copied!" type="button"><span class="octicon octicon-clippy"></span></button>
    </span>
  </div>
</div>

  
<div class="js-clone-url clone-url "
  data-protocol-type="ssh">
  <h3><span class="text-emphasized">SSH</span> clone URL</h3>
  <div class="input-group js-zeroclipboard-container">
    <input type="text" class="input-mini input-monospace js-url-field js-zeroclipboard-target"
           value="git@github.com:emacs-mirror/emacs.git" readonly="readonly">
    <span class="input-group-button">
      <button aria-label="Copy to clipboard" class="js-zeroclipboard btn btn-sm zeroclipboard-button tooltipped tooltipped-s" data-copied-hint="Copied!" type="button"><span class="octicon octicon-clippy"></span></button>
    </span>
  </div>
</div>

  
<div class="js-clone-url clone-url "
  data-protocol-type="subversion">
  <h3><span class="text-emphasized">Subversion</span> checkout URL</h3>
  <div class="input-group js-zeroclipboard-container">
    <input type="text" class="input-mini input-monospace js-url-field js-zeroclipboard-target"
           value="https://github.com/emacs-mirror/emacs" readonly="readonly">
    <span class="input-group-button">
      <button aria-label="Copy to clipboard" class="js-zeroclipboard btn btn-sm zeroclipboard-button tooltipped tooltipped-s" data-copied-hint="Copied!" type="button"><span class="octicon octicon-clippy"></span></button>
    </span>
  </div>
</div>



<div class="clone-options">You can clone with
  <form accept-charset="UTF-8" action="/users/set_protocol?protocol_selector=http&amp;protocol_type=clone" class="inline-form js-clone-selector-form is-enabled" data-remote="true" method="post"><div style="margin:0;padding:0;display:inline"><input name="utf8" type="hidden" value="&#x2713;" /><input name="authenticity_token" type="hidden" value="Uo244r87iW3YqG5ZdnxYFpy276dSlq3Ai8+x7sZMdfHgork/Gxi9JlWdpildPinmE1p95pH5sepCbreu+S9oMA==" /></div><button class="btn-link js-clone-selector" data-protocol="http" type="submit">HTTPS</button></form>, <form accept-charset="UTF-8" action="/users/set_protocol?protocol_selector=ssh&amp;protocol_type=clone" class="inline-form js-clone-selector-form is-enabled" data-remote="true" method="post"><div style="margin:0;padding:0;display:inline"><input name="utf8" type="hidden" value="&#x2713;" /><input name="authenticity_token" type="hidden" value="9no1aIOqnDT9NpXDVaNKpzjMhSNQyO02N4z+UfhpU8n/iQPs6KTnxCzkD1Ly1fzcM8N3ZC1L2Uw8RCY5Rghwrw==" /></div><button class="btn-link js-clone-selector" data-protocol="ssh" type="submit">SSH</button></form>, or <form accept-charset="UTF-8" action="/users/set_protocol?protocol_selector=subversion&amp;protocol_type=clone" class="inline-form js-clone-selector-form is-enabled" data-remote="true" method="post"><div style="margin:0;padding:0;display:inline"><input name="utf8" type="hidden" value="&#x2713;" /><input name="authenticity_token" type="hidden" value="j7xwGyUa4CqYMCBqTK+xl2bt+GmubteLXGlbl8sUzwx4qnC0sqUhA5dwaz9wnFvGIljkqEdXFCZWsw4BRI0N4w==" /></div><button class="btn-link js-clone-selector" data-protocol="subversion" type="submit">Subversion</button></form>.
  <a href="https://help.github.com/articles/which-remote-url-should-i-use" class="help tooltipped tooltipped-n" aria-label="Get help on which URL is right for you.">
    <span class="octicon octicon-question"></span>
  </a>
</div>


  <a href="https://windows.github.com" class="btn btn-sm sidebar-button" title="Save emacs-mirror/emacs to your computer and use it in GitHub Desktop." aria-label="Save emacs-mirror/emacs to your computer and use it in GitHub Desktop.">
    <span class="octicon octicon-device-desktop"></span>
    Clone in Desktop
  </a>


                <a href="/emacs-mirror/emacs/archive/master.zip"
                   class="btn btn-sm sidebar-button"
                   aria-label="Download the contents of emacs-mirror/emacs as a zip file"
                   title="Download the contents of emacs-mirror/emacs as a zip file"
                   rel="nofollow">
                  <span class="octicon octicon-cloud-download"></span>
                  Download ZIP
                </a>
              </div>
        </div><!-- /.repository-sidebar -->

        <div id="js-repo-pjax-container" class="repository-content context-loader-container" data-pjax-container>

          

<a href="/emacs-mirror/emacs/blob/84085e36a4765d2396c04da246b796a6f5fa7a49/lisp/emacs-lisp/cl-lib.el" class="hidden js-permalink-shortcut" data-hotkey="y">Permalink</a>

<!-- blob contrib key: blob_contributors:v21:b5f9f7330754081be1fc77eb45eb4a2b -->

<div class="file-navigation js-zeroclipboard-container">
  
<div class="select-menu js-menu-container js-select-menu left">
  <span class="btn btn-sm select-menu-button js-menu-target css-truncate" data-hotkey="w"
    data-ref="master"
    title="master"
    role="button" aria-label="Switch branches or tags" tabindex="0" aria-haspopup="true">
    <span class="octicon octicon-git-branch"></span>
    <i>branch:</i>
    <span class="js-select-button css-truncate-target">master</span>
  </span>

  <div class="select-menu-modal-holder js-menu-content js-navigation-container" data-pjax aria-hidden="true">

    <div class="select-menu-modal">
      <div class="select-menu-header">
        <span class="select-menu-title">Switch branches/tags</span>
        <span class="octicon octicon-x js-menu-close" role="button" aria-label="Close"></span>
      </div>

      <div class="select-menu-filters">
        <div class="select-menu-text-filter">
          <input type="text" aria-label="Filter branches/tags" id="context-commitish-filter-field" class="js-filterable-field js-navigation-enable" placeholder="Filter branches/tags">
        </div>
        <div class="select-menu-tabs">
          <ul>
            <li class="select-menu-tab">
              <a href="#" data-tab-filter="branches" data-filter-placeholder="Filter branches/tags" class="js-select-menu-tab">Branches</a>
            </li>
            <li class="select-menu-tab">
              <a href="#" data-tab-filter="tags" data-filter-placeholder="Find a tag…" class="js-select-menu-tab">Tags</a>
            </li>
          </ul>
        </div>
      </div>

      <div class="select-menu-list select-menu-tab-bucket js-select-menu-tab-bucket" data-tab-filter="branches">

        <div data-filterable-for="context-commitish-filter-field" data-filterable-type="substring">


            <a class="select-menu-item js-navigation-item js-navigation-open "
               href="/emacs-mirror/emacs/blob/cairo/lisp/emacs-lisp/cl-lib.el"
               data-name="cairo"
               data-skip-pjax="true"
               rel="nofollow">
              <span class="select-menu-item-icon octicon octicon-check"></span>
              <span class="select-menu-item-text css-truncate-target" title="cairo">
                cairo
              </span>
            </a>
            <a class="select-menu-item js-navigation-item js-navigation-open "
               href="/emacs-mirror/emacs/blob/concurrency/lisp/emacs-lisp/cl-lib.el"
               data-name="concurrency"
               data-skip-pjax="true"
               rel="nofollow">
              <span class="select-menu-item-icon octicon octicon-check"></span>
              <span class="select-menu-item-text css-truncate-target" title="concurrency">
                concurrency
              </span>
            </a>
            <a class="select-menu-item js-navigation-item js-navigation-open "
               href="/emacs-mirror/emacs/blob/dynamic-modules-rc2/lisp/emacs-lisp/cl-lib.el"
               data-name="dynamic-modules-rc2"
               data-skip-pjax="true"
               rel="nofollow">
              <span class="select-menu-item-icon octicon octicon-check"></span>
              <span class="select-menu-item-text css-truncate-target" title="dynamic-modules-rc2">
                dynamic-modules-rc2
              </span>
            </a>
            <a class="select-menu-item js-navigation-item js-navigation-open "
               href="/emacs-mirror/emacs/blob/emacs-23/lisp/emacs-lisp/cl-lib.el"
               data-name="emacs-23"
               data-skip-pjax="true"
               rel="nofollow">
              <span class="select-menu-item-icon octicon octicon-check"></span>
              <span class="select-menu-item-text css-truncate-target" title="emacs-23">
                emacs-23
              </span>
            </a>
            <a class="select-menu-item js-navigation-item js-navigation-open "
               href="/emacs-mirror/emacs/blob/emacs-24/lisp/emacs-lisp/cl-lib.el"
               data-name="emacs-24"
               data-skip-pjax="true"
               rel="nofollow">
              <span class="select-menu-item-icon octicon octicon-check"></span>
              <span class="select-menu-item-text css-truncate-target" title="emacs-24">
                emacs-24
              </span>
            </a>
            <a class="select-menu-item js-navigation-item js-navigation-open "
               href="/emacs-mirror/emacs/blob/gtk-tabs/lisp/emacs-lisp/cl-lib.el"
               data-name="gtk-tabs"
               data-skip-pjax="true"
               rel="nofollow">
              <span class="select-menu-item-icon octicon octicon-check"></span>
              <span class="select-menu-item-text css-truncate-target" title="gtk-tabs">
                gtk-tabs
              </span>
            </a>
            <a class="select-menu-item js-navigation-item js-navigation-open selected"
               href="/emacs-mirror/emacs/blob/master/lisp/emacs-lisp/cl-lib.el"
               data-name="master"
               data-skip-pjax="true"
               rel="nofollow">
              <span class="select-menu-item-icon octicon octicon-check"></span>
              <span class="select-menu-item-text css-truncate-target" title="master">
                master
              </span>
            </a>
            <a class="select-menu-item js-navigation-item js-navigation-open "
               href="/emacs-mirror/emacs/blob/nsm/lisp/emacs-lisp/cl-lib.el"
               data-name="nsm"
               data-skip-pjax="true"
               rel="nofollow">
              <span class="select-menu-item-icon octicon octicon-check"></span>
              <span class="select-menu-item-text css-truncate-target" title="nsm">
                nsm
              </span>
            </a>
            <a class="select-menu-item js-navigation-item js-navigation-open "
               href="/emacs-mirror/emacs/blob/old-branches/EMACS_21_1_RC/lisp/emacs-lisp/cl-lib.el"
               data-name="old-branches/EMACS_21_1_RC"
               data-skip-pjax="true"
               rel="nofollow">
              <span class="select-menu-item-icon octicon octicon-check"></span>
              <span class="select-menu-item-text css-truncate-target" title="old-branches/EMACS_21_1_RC">
                old-branches/EMACS_21_1_RC
              </span>
            </a>
            <a class="select-menu-item js-navigation-item js-navigation-open "
               href="/emacs-mirror/emacs/blob/old-branches/EMACS_22_BASE/lisp/emacs-lisp/cl-lib.el"
               data-name="old-branches/EMACS_22_BASE"
               data-skip-pjax="true"
               rel="nofollow">
              <span class="select-menu-item-icon octicon octicon-check"></span>
              <span class="select-menu-item-text css-truncate-target" title="old-branches/EMACS_22_BASE">
                old-branches/EMACS_22_BASE
              </span>
            </a>
            <a class="select-menu-item js-navigation-item js-navigation-open "
               href="/emacs-mirror/emacs/blob/old-branches/EMACS_23_1_RC/lisp/emacs-lisp/cl-lib.el"
               data-name="old-branches/EMACS_23_1_RC"
               data-skip-pjax="true"
               rel="nofollow">
              <span class="select-menu-item-icon octicon octicon-check"></span>
              <span class="select-menu-item-text css-truncate-target" title="old-branches/EMACS_23_1_RC">
                old-branches/EMACS_23_1_RC
              </span>
            </a>
            <a class="select-menu-item js-navigation-item js-navigation-open "
               href="/emacs-mirror/emacs/blob/old-branches/NewVC-fileset/lisp/emacs-lisp/cl-lib.el"
               data-name="old-branches/NewVC-fileset"
               data-skip-pjax="true"
               rel="nofollow">
              <span class="select-menu-item-icon octicon octicon-check"></span>
              <span class="select-menu-item-text css-truncate-target" title="old-branches/NewVC-fileset">
                old-branches/NewVC-fileset
              </span>
            </a>
            <a class="select-menu-item js-navigation-item js-navigation-open "
               href="/emacs-mirror/emacs/blob/old-branches/branch-5_8/lisp/emacs-lisp/cl-lib.el"
               data-name="old-branches/branch-5_8"
               data-skip-pjax="true"
               rel="nofollow">
              <span class="select-menu-item-icon octicon octicon-check"></span>
              <span class="select-menu-item-text css-truncate-target" title="old-branches/branch-5_8">
                old-branches/branch-5_8
              </span>
            </a>
            <a class="select-menu-item js-navigation-item js-navigation-open "
               href="/emacs-mirror/emacs/blob/old-branches/cedet-branch/lisp/emacs-lisp/cl-lib.el"
               data-name="old-branches/cedet-branch"
               data-skip-pjax="true"
               rel="nofollow">
              <span class="select-menu-item-icon octicon octicon-check"></span>
              <span class="select-menu-item-text css-truncate-target" title="old-branches/cedet-branch">
                old-branches/cedet-branch
              </span>
            </a>
            <a class="select-menu-item js-navigation-item js-navigation-open "
               href="/emacs-mirror/emacs/blob/old-branches/emacs-unicode/lisp/emacs-lisp/cl-lib.el"
               data-name="old-branches/emacs-unicode"
               data-skip-pjax="true"
               rel="nofollow">
              <span class="select-menu-item-icon octicon octicon-check"></span>
              <span class="select-menu-item-text css-truncate-target" title="old-branches/emacs-unicode">
                old-branches/emacs-unicode
              </span>
            </a>
            <a class="select-menu-item js-navigation-item js-navigation-open "
               href="/emacs-mirror/emacs/blob/old-branches/emacs-unicode-2/lisp/emacs-lisp/cl-lib.el"
               data-name="old-branches/emacs-unicode-2"
               data-skip-pjax="true"
               rel="nofollow">
              <span class="select-menu-item-icon octicon octicon-check"></span>
              <span class="select-menu-item-text css-truncate-target" title="old-branches/emacs-unicode-2">
                old-branches/emacs-unicode-2
              </span>
            </a>
            <a class="select-menu-item js-navigation-item js-navigation-open "
               href="/emacs-mirror/emacs/blob/old-branches/font-backend/lisp/emacs-lisp/cl-lib.el"
               data-name="old-branches/font-backend"
               data-skip-pjax="true"
               rel="nofollow">
              <span class="select-menu-item-icon octicon octicon-check"></span>
              <span class="select-menu-item-text css-truncate-target" title="old-branches/font-backend">
                old-branches/font-backend
              </span>
            </a>
            <a class="select-menu-item js-navigation-item js-navigation-open "
               href="/emacs-mirror/emacs/blob/old-branches/gerd_defvaralias/lisp/emacs-lisp/cl-lib.el"
               data-name="old-branches/gerd_defvaralias"
               data-skip-pjax="true"
               rel="nofollow">
              <span class="select-menu-item-icon octicon octicon-check"></span>
              <span class="select-menu-item-text css-truncate-target" title="old-branches/gerd_defvaralias">
                old-branches/gerd_defvaralias
              </span>
            </a>
            <a class="select-menu-item js-navigation-item js-navigation-open "
               href="/emacs-mirror/emacs/blob/old-branches/gnus-5_10-branch/lisp/emacs-lisp/cl-lib.el"
               data-name="old-branches/gnus-5_10-branch"
               data-skip-pjax="true"
               rel="nofollow">
              <span class="select-menu-item-icon octicon octicon-check"></span>
              <span class="select-menu-item-text css-truncate-target" title="old-branches/gnus-5_10-branch">
                old-branches/gnus-5_10-branch
              </span>
            </a>
            <a class="select-menu-item js-navigation-item js-navigation-open "
               href="/emacs-mirror/emacs/blob/old-branches/imagemagick/lisp/emacs-lisp/cl-lib.el"
               data-name="old-branches/imagemagick"
               data-skip-pjax="true"
               rel="nofollow">
              <span class="select-menu-item-icon octicon octicon-check"></span>
              <span class="select-menu-item-text css-truncate-target" title="old-branches/imagemagick">
                old-branches/imagemagick
              </span>
            </a>
            <a class="select-menu-item js-navigation-item js-navigation-open "
               href="/emacs-mirror/emacs/blob/old-branches/lexbind/lisp/emacs-lisp/cl-lib.el"
               data-name="old-branches/lexbind"
               data-skip-pjax="true"
               rel="nofollow">
              <span class="select-menu-item-icon octicon octicon-check"></span>
              <span class="select-menu-item-text css-truncate-target" title="old-branches/lexbind">
                old-branches/lexbind
              </span>
            </a>
            <a class="select-menu-item js-navigation-item js-navigation-open "
               href="/emacs-mirror/emacs/blob/old-branches/lexbind-new/lisp/emacs-lisp/cl-lib.el"
               data-name="old-branches/lexbind-new"
               data-skip-pjax="true"
               rel="nofollow">
              <span class="select-menu-item-icon octicon octicon-check"></span>
              <span class="select-menu-item-text css-truncate-target" title="old-branches/lexbind-new">
                old-branches/lexbind-new
              </span>
            </a>
            <a class="select-menu-item js-navigation-item js-navigation-open "
               href="/emacs-mirror/emacs/blob/old-branches/multi-tty/lisp/emacs-lisp/cl-lib.el"
               data-name="old-branches/multi-tty"
               data-skip-pjax="true"
               rel="nofollow">
              <span class="select-menu-item-icon octicon octicon-check"></span>
              <span class="select-menu-item-text css-truncate-target" title="old-branches/multi-tty">
                old-branches/multi-tty
              </span>
            </a>
            <a class="select-menu-item js-navigation-item js-navigation-open "
               href="/emacs-mirror/emacs/blob/old-branches/pending/lisp/emacs-lisp/cl-lib.el"
               data-name="old-branches/pending"
               data-skip-pjax="true"
               rel="nofollow">
              <span class="select-menu-item-icon octicon octicon-check"></span>
              <span class="select-menu-item-text css-truncate-target" title="old-branches/pending">
                old-branches/pending
              </span>
            </a>
            <a class="select-menu-item js-navigation-item js-navigation-open "
               href="/emacs-mirror/emacs/blob/old-branches/profiler/lisp/emacs-lisp/cl-lib.el"
               data-name="old-branches/profiler"
               data-skip-pjax="true"
               rel="nofollow">
              <span class="select-menu-item-icon octicon octicon-check"></span>
              <span class="select-menu-item-text css-truncate-target" title="old-branches/profiler">
                old-branches/profiler
              </span>
            </a>
            <a class="select-menu-item js-navigation-item js-navigation-open "
               href="/emacs-mirror/emacs/blob/old-branches/python/lisp/emacs-lisp/cl-lib.el"
               data-name="old-branches/python"
               data-skip-pjax="true"
               rel="nofollow">
              <span class="select-menu-item-icon octicon octicon-check"></span>
              <span class="select-menu-item-text css-truncate-target" title="old-branches/python">
                old-branches/python
              </span>
            </a>
            <a class="select-menu-item js-navigation-item js-navigation-open "
               href="/emacs-mirror/emacs/blob/old-branches/rmail-mbox-branch/lisp/emacs-lisp/cl-lib.el"
               data-name="old-branches/rmail-mbox-branch"
               data-skip-pjax="true"
               rel="nofollow">
              <span class="select-menu-item-icon octicon octicon-check"></span>
              <span class="select-menu-item-text css-truncate-target" title="old-branches/rmail-mbox-branch">
                old-branches/rmail-mbox-branch
              </span>
            </a>
            <a class="select-menu-item js-navigation-item js-navigation-open "
               href="/emacs-mirror/emacs/blob/old-branches/unicode-xft/lisp/emacs-lisp/cl-lib.el"
               data-name="old-branches/unicode-xft"
               data-skip-pjax="true"
               rel="nofollow">
              <span class="select-menu-item-icon octicon octicon-check"></span>
              <span class="select-menu-item-text css-truncate-target" title="old-branches/unicode-xft">
                old-branches/unicode-xft
              </span>
            </a>
            <a class="select-menu-item js-navigation-item js-navigation-open "
               href="/emacs-mirror/emacs/blob/old-branches/window-pub/lisp/emacs-lisp/cl-lib.el"
               data-name="old-branches/window-pub"
               data-skip-pjax="true"
               rel="nofollow">
              <span class="select-menu-item-icon octicon octicon-check"></span>
              <span class="select-menu-item-text css-truncate-target" title="old-branches/window-pub">
                old-branches/window-pub
              </span>
            </a>
            <a class="select-menu-item js-navigation-item js-navigation-open "
               href="/emacs-mirror/emacs/blob/other-branches/Boehm-GC/lisp/emacs-lisp/cl-lib.el"
               data-name="other-branches/Boehm-GC"
               data-skip-pjax="true"
               rel="nofollow">
              <span class="select-menu-item-icon octicon octicon-check"></span>
              <span class="select-menu-item-text css-truncate-target" title="other-branches/Boehm-GC">
                other-branches/Boehm-GC
              </span>
            </a>
            <a class="select-menu-item js-navigation-item js-navigation-open "
               href="/emacs-mirror/emacs/blob/other-branches/Boehm-versions/lisp/emacs-lisp/cl-lib.el"
               data-name="other-branches/Boehm-versions"
               data-skip-pjax="true"
               rel="nofollow">
              <span class="select-menu-item-icon octicon octicon-check"></span>
              <span class="select-menu-item-text css-truncate-target" title="other-branches/Boehm-versions">
                other-branches/Boehm-versions
              </span>
            </a>
            <a class="select-menu-item js-navigation-item js-navigation-open "
               href="/emacs-mirror/emacs/blob/other-branches/DAVELOVE/lisp/emacs-lisp/cl-lib.el"
               data-name="other-branches/DAVELOVE"
               data-skip-pjax="true"
               rel="nofollow">
              <span class="select-menu-item-icon octicon octicon-check"></span>
              <span class="select-menu-item-text css-truncate-target" title="other-branches/DAVELOVE">
                other-branches/DAVELOVE
              </span>
            </a>
            <a class="select-menu-item js-navigation-item js-navigation-open "
               href="/emacs-mirror/emacs/blob/other-branches/FLYSPELL/lisp/emacs-lisp/cl-lib.el"
               data-name="other-branches/FLYSPELL"
               data-skip-pjax="true"
               rel="nofollow">
              <span class="select-menu-item-icon octicon octicon-check"></span>
              <span class="select-menu-item-text css-truncate-target" title="other-branches/FLYSPELL">
                other-branches/FLYSPELL
              </span>
            </a>
            <a class="select-menu-item js-navigation-item js-navigation-open "
               href="/emacs-mirror/emacs/blob/other-branches/ILYA/lisp/emacs-lisp/cl-lib.el"
               data-name="other-branches/ILYA"
               data-skip-pjax="true"
               rel="nofollow">
              <span class="select-menu-item-icon octicon octicon-check"></span>
              <span class="select-menu-item-text css-truncate-target" title="other-branches/ILYA">
                other-branches/ILYA
              </span>
            </a>
            <a class="select-menu-item js-navigation-item js-navigation-open "
               href="/emacs-mirror/emacs/blob/other-branches/VENDOR/lisp/emacs-lisp/cl-lib.el"
               data-name="other-branches/VENDOR"
               data-skip-pjax="true"
               rel="nofollow">
              <span class="select-menu-item-icon octicon octicon-check"></span>
              <span class="select-menu-item-text css-truncate-target" title="other-branches/VENDOR">
                other-branches/VENDOR
              </span>
            </a>
            <a class="select-menu-item js-navigation-item js-navigation-open "
               href="/emacs-mirror/emacs/blob/other-branches/custom_themes/lisp/emacs-lisp/cl-lib.el"
               data-name="other-branches/custom_themes"
               data-skip-pjax="true"
               rel="nofollow">
              <span class="select-menu-item-icon octicon octicon-check"></span>
              <span class="select-menu-item-text css-truncate-target" title="other-branches/custom_themes">
                other-branches/custom_themes
              </span>
            </a>
            <a class="select-menu-item js-navigation-item js-navigation-open "
               href="/emacs-mirror/emacs/blob/other-branches/fx-branch/lisp/emacs-lisp/cl-lib.el"
               data-name="other-branches/fx-branch"
               data-skip-pjax="true"
               rel="nofollow">
              <span class="select-menu-item-icon octicon octicon-check"></span>
              <span class="select-menu-item-text css-truncate-target" title="other-branches/fx-branch">
                other-branches/fx-branch
              </span>
            </a>
            <a class="select-menu-item js-navigation-item js-navigation-open "
               href="/emacs-mirror/emacs/blob/other-branches/gerd_0001/lisp/emacs-lisp/cl-lib.el"
               data-name="other-branches/gerd_0001"
               data-skip-pjax="true"
               rel="nofollow">
              <span class="select-menu-item-icon octicon octicon-check"></span>
              <span class="select-menu-item-text css-truncate-target" title="other-branches/gerd_0001">
                other-branches/gerd_0001
              </span>
            </a>
            <a class="select-menu-item js-navigation-item js-navigation-open "
               href="/emacs-mirror/emacs/blob/other-branches/gerd_big/lisp/emacs-lisp/cl-lib.el"
               data-name="other-branches/gerd_big"
               data-skip-pjax="true"
               rel="nofollow">
              <span class="select-menu-item-icon octicon octicon-check"></span>
              <span class="select-menu-item-text css-truncate-target" title="other-branches/gerd_big">
                other-branches/gerd_big
              </span>
            </a>
            <a class="select-menu-item js-navigation-item js-navigation-open "
               href="/emacs-mirror/emacs/blob/other-branches/gerd_dbe/lisp/emacs-lisp/cl-lib.el"
               data-name="other-branches/gerd_dbe"
               data-skip-pjax="true"
               rel="nofollow">
              <span class="select-menu-item-icon octicon octicon-check"></span>
              <span class="select-menu-item-text css-truncate-target" title="other-branches/gerd_dbe">
                other-branches/gerd_dbe
              </span>
            </a>
            <a class="select-menu-item js-navigation-item js-navigation-open "
               href="/emacs-mirror/emacs/blob/other-branches/gerd_int/lisp/emacs-lisp/cl-lib.el"
               data-name="other-branches/gerd_int"
               data-skip-pjax="true"
               rel="nofollow">
              <span class="select-menu-item-icon octicon octicon-check"></span>
              <span class="select-menu-item-text css-truncate-target" title="other-branches/gerd_int">
                other-branches/gerd_int
              </span>
            </a>
            <a class="select-menu-item js-navigation-item js-navigation-open "
               href="/emacs-mirror/emacs/blob/other-branches/miles-orphaned-changes/lisp/emacs-lisp/cl-lib.el"
               data-name="other-branches/miles-orphaned-changes"
               data-skip-pjax="true"
               rel="nofollow">
              <span class="select-menu-item-icon octicon octicon-check"></span>
              <span class="select-menu-item-text css-truncate-target" title="other-branches/miles-orphaned-changes">
                other-branches/miles-orphaned-changes
              </span>
            </a>
            <a class="select-menu-item js-navigation-item js-navigation-open "
               href="/emacs-mirror/emacs/blob/other-branches/old-bidi/lisp/emacs-lisp/cl-lib.el"
               data-name="other-branches/old-bidi"
               data-skip-pjax="true"
               rel="nofollow">
              <span class="select-menu-item-icon octicon octicon-check"></span>
              <span class="select-menu-item-text css-truncate-target" title="other-branches/old-bidi">
                other-branches/old-bidi
              </span>
            </a>
            <a class="select-menu-item js-navigation-item js-navigation-open "
               href="/emacs-mirror/emacs/blob/other-branches/old-concurrency/lisp/emacs-lisp/cl-lib.el"
               data-name="other-branches/old-concurrency"
               data-skip-pjax="true"
               rel="nofollow">
              <span class="select-menu-item-icon octicon octicon-check"></span>
              <span class="select-menu-item-text css-truncate-target" title="other-branches/old-concurrency">
                other-branches/old-concurrency
              </span>
            </a>
            <a class="select-menu-item js-navigation-item js-navigation-open "
               href="/emacs-mirror/emacs/blob/other-branches/patches_21_0/lisp/emacs-lisp/cl-lib.el"
               data-name="other-branches/patches_21_0"
               data-skip-pjax="true"
               rel="nofollow">
              <span class="select-menu-item-icon octicon octicon-check"></span>
              <span class="select-menu-item-text css-truncate-target" title="other-branches/patches_21_0">
                other-branches/patches_21_0
              </span>
            </a>
            <a class="select-menu-item js-navigation-item js-navigation-open "
               href="/emacs-mirror/emacs/blob/other-branches/test2/lisp/emacs-lisp/cl-lib.el"
               data-name="other-branches/test2"
               data-skip-pjax="true"
               rel="nofollow">
              <span class="select-menu-item-icon octicon octicon-check"></span>
              <span class="select-menu-item-text css-truncate-target" title="other-branches/test2">
                other-branches/test2
              </span>
            </a>
            <a class="select-menu-item js-navigation-item js-navigation-open "
               href="/emacs-mirror/emacs/blob/other-branches/ttn-vms-21-2-stash/lisp/emacs-lisp/cl-lib.el"
               data-name="other-branches/ttn-vms-21-2-stash"
               data-skip-pjax="true"
               rel="nofollow">
              <span class="select-menu-item-icon octicon octicon-check"></span>
              <span class="select-menu-item-text css-truncate-target" title="other-branches/ttn-vms-21-2-stash">
                other-branches/ttn-vms-21-2-stash
              </span>
            </a>
            <a class="select-menu-item js-navigation-item js-navigation-open "
               href="/emacs-mirror/emacs/blob/other-branches/ttn-vms-21-3-stash/lisp/emacs-lisp/cl-lib.el"
               data-name="other-branches/ttn-vms-21-3-stash"
               data-skip-pjax="true"
               rel="nofollow">
              <span class="select-menu-item-icon octicon octicon-check"></span>
              <span class="select-menu-item-text css-truncate-target" title="other-branches/ttn-vms-21-3-stash">
                other-branches/ttn-vms-21-3-stash
              </span>
            </a>
            <a class="select-menu-item js-navigation-item js-navigation-open "
               href="/emacs-mirror/emacs/blob/pending/lisp/emacs-lisp/cl-lib.el"
               data-name="pending"
               data-skip-pjax="true"
               rel="nofollow">
              <span class="select-menu-item-icon octicon octicon-check"></span>
              <span class="select-menu-item-text css-truncate-target" title="pending">
                pending
              </span>
            </a>
            <a class="select-menu-item js-navigation-item js-navigation-open "
               href="/emacs-mirror/emacs/blob/scratch/dynamic-modules-2/lisp/emacs-lisp/cl-lib.el"
               data-name="scratch/dynamic-modules-2"
               data-skip-pjax="true"
               rel="nofollow">
              <span class="select-menu-item-icon octicon octicon-check"></span>
              <span class="select-menu-item-text css-truncate-target" title="scratch/dynamic-modules-2">
                scratch/dynamic-modules-2
              </span>
            </a>
            <a class="select-menu-item js-navigation-item js-navigation-open "
               href="/emacs-mirror/emacs/blob/scratch/fix-info-dups/lisp/emacs-lisp/cl-lib.el"
               data-name="scratch/fix-info-dups"
               data-skip-pjax="true"
               rel="nofollow">
              <span class="select-menu-item-icon octicon octicon-check"></span>
              <span class="select-menu-item-text css-truncate-target" title="scratch/fix-info-dups">
                scratch/fix-info-dups
              </span>
            </a>
            <a class="select-menu-item js-navigation-item js-navigation-open "
               href="/emacs-mirror/emacs/blob/scratch/highlight-n-windows/lisp/emacs-lisp/cl-lib.el"
               data-name="scratch/highlight-n-windows"
               data-skip-pjax="true"
               rel="nofollow">
              <span class="select-menu-item-icon octicon octicon-check"></span>
              <span class="select-menu-item-text css-truncate-target" title="scratch/highlight-n-windows">
                scratch/highlight-n-windows
              </span>
            </a>
            <a class="select-menu-item js-navigation-item js-navigation-open "
               href="/emacs-mirror/emacs/blob/scratch/remove-internal-field/lisp/emacs-lisp/cl-lib.el"
               data-name="scratch/remove-internal-field"
               data-skip-pjax="true"
               rel="nofollow">
              <span class="select-menu-item-icon octicon octicon-check"></span>
              <span class="select-menu-item-text css-truncate-target" title="scratch/remove-internal-field">
                scratch/remove-internal-field
              </span>
            </a>
            <a class="select-menu-item js-navigation-item js-navigation-open "
               href="/emacs-mirror/emacs/blob/scratch/xref/lisp/emacs-lisp/cl-lib.el"
               data-name="scratch/xref"
               data-skip-pjax="true"
               rel="nofollow">
              <span class="select-menu-item-icon octicon octicon-check"></span>
              <span class="select-menu-item-text css-truncate-target" title="scratch/xref">
                scratch/xref
              </span>
            </a>
            <a class="select-menu-item js-navigation-item js-navigation-open "
               href="/emacs-mirror/emacs/blob/shr-fontified/lisp/emacs-lisp/cl-lib.el"
               data-name="shr-fontified"
               data-skip-pjax="true"
               rel="nofollow">
              <span class="select-menu-item-icon octicon octicon-check"></span>
              <span class="select-menu-item-text css-truncate-target" title="shr-fontified">
                shr-fontified
              </span>
            </a>
            <a class="select-menu-item js-navigation-item js-navigation-open "
               href="/emacs-mirror/emacs/blob/x-tabs/lisp/emacs-lisp/cl-lib.el"
               data-name="x-tabs"
               data-skip-pjax="true"
               rel="nofollow">
              <span class="select-menu-item-icon octicon octicon-check"></span>
              <span class="select-menu-item-text css-truncate-target" title="x-tabs">
                x-tabs
              </span>
            </a>
            <a class="select-menu-item js-navigation-item js-navigation-open "
               href="/emacs-mirror/emacs/blob/xwidget/lisp/emacs-lisp/cl-lib.el"
               data-name="xwidget"
               data-skip-pjax="true"
               rel="nofollow">
              <span class="select-menu-item-icon octicon octicon-check"></span>
              <span class="select-menu-item-text css-truncate-target" title="xwidget">
                xwidget
              </span>
            </a>
            <a class="select-menu-item js-navigation-item js-navigation-open "
               href="/emacs-mirror/emacs/blob/xwidget_mvp/lisp/emacs-lisp/cl-lib.el"
               data-name="xwidget_mvp"
               data-skip-pjax="true"
               rel="nofollow">
              <span class="select-menu-item-icon octicon octicon-check"></span>
              <span class="select-menu-item-text css-truncate-target" title="xwidget_mvp">
                xwidget_mvp
              </span>
            </a>
        </div>

          <div class="select-menu-no-results">Nothing to show</div>
      </div>

      <div class="select-menu-list select-menu-tab-bucket js-select-menu-tab-bucket" data-tab-filter="tags">
        <div data-filterable-for="context-commitish-filter-field" data-filterable-type="substring">


            <div class="select-menu-item js-navigation-item ">
              <span class="select-menu-item-icon octicon octicon-check"></span>
              <a href="/emacs-mirror/emacs/tree/ttn-vms-21-2-B4/lisp/emacs-lisp/cl-lib.el"
                 data-name="ttn-vms-21-2-B4"
                 data-skip-pjax="true"
                 rel="nofollow"
                 class="js-navigation-open select-menu-item-text css-truncate-target"
                 title="ttn-vms-21-2-B4">ttn-vms-21-2-B4</a>
            </div>
            <div class="select-menu-item js-navigation-item ">
              <span class="select-menu-item-icon octicon octicon-check"></span>
              <a href="/emacs-mirror/emacs/tree/ttn-vms-21-2-B3/lisp/emacs-lisp/cl-lib.el"
                 data-name="ttn-vms-21-2-B3"
                 data-skip-pjax="true"
                 rel="nofollow"
                 class="js-navigation-open select-menu-item-text css-truncate-target"
                 title="ttn-vms-21-2-B3">ttn-vms-21-2-B3</a>
            </div>
            <div class="select-menu-item js-navigation-item ">
              <span class="select-menu-item-icon octicon octicon-check"></span>
              <a href="/emacs-mirror/emacs/tree/ttn-vms-21-2-B2/lisp/emacs-lisp/cl-lib.el"
                 data-name="ttn-vms-21-2-B2"
                 data-skip-pjax="true"
                 rel="nofollow"
                 class="js-navigation-open select-menu-item-text css-truncate-target"
                 title="ttn-vms-21-2-B2">ttn-vms-21-2-B2</a>
            </div>
            <div class="select-menu-item js-navigation-item ">
              <span class="select-menu-item-icon octicon octicon-check"></span>
              <a href="/emacs-mirror/emacs/tree/emacs-pretest-24.0.95/lisp/emacs-lisp/cl-lib.el"
                 data-name="emacs-pretest-24.0.95"
                 data-skip-pjax="true"
                 rel="nofollow"
                 class="js-navigation-open select-menu-item-text css-truncate-target"
                 title="emacs-pretest-24.0.95">emacs-pretest-24.0.95</a>
            </div>
            <div class="select-menu-item js-navigation-item ">
              <span class="select-menu-item-icon octicon octicon-check"></span>
              <a href="/emacs-mirror/emacs/tree/emacs-pretest-24.0.94/lisp/emacs-lisp/cl-lib.el"
                 data-name="emacs-pretest-24.0.94"
                 data-skip-pjax="true"
                 rel="nofollow"
                 class="js-navigation-open select-menu-item-text css-truncate-target"
                 title="emacs-pretest-24.0.94">emacs-pretest-24.0.94</a>
            </div>
            <div class="select-menu-item js-navigation-item ">
              <span class="select-menu-item-icon octicon octicon-check"></span>
              <a href="/emacs-mirror/emacs/tree/emacs-pretest-24.0.93/lisp/emacs-lisp/cl-lib.el"
                 data-name="emacs-pretest-24.0.93"
                 data-skip-pjax="true"
                 rel="nofollow"
                 class="js-navigation-open select-menu-item-text css-truncate-target"
                 title="emacs-pretest-24.0.93">emacs-pretest-24.0.93</a>
            </div>
            <div class="select-menu-item js-navigation-item ">
              <span class="select-menu-item-icon octicon octicon-check"></span>
              <a href="/emacs-mirror/emacs/tree/emacs-pretest-24.0.92/lisp/emacs-lisp/cl-lib.el"
                 data-name="emacs-pretest-24.0.92"
                 data-skip-pjax="true"
                 rel="nofollow"
                 class="js-navigation-open select-menu-item-text css-truncate-target"
                 title="emacs-pretest-24.0.92">emacs-pretest-24.0.92</a>
            </div>
            <div class="select-menu-item js-navigation-item ">
              <span class="select-menu-item-icon octicon octicon-check"></span>
              <a href="/emacs-mirror/emacs/tree/emacs-pretest-24.0.91/lisp/emacs-lisp/cl-lib.el"
                 data-name="emacs-pretest-24.0.91"
                 data-skip-pjax="true"
                 rel="nofollow"
                 class="js-navigation-open select-menu-item-text css-truncate-target"
                 title="emacs-pretest-24.0.91">emacs-pretest-24.0.91</a>
            </div>
            <div class="select-menu-item js-navigation-item ">
              <span class="select-menu-item-icon octicon octicon-check"></span>
              <a href="/emacs-mirror/emacs/tree/emacs-pretest-24.0.90/lisp/emacs-lisp/cl-lib.el"
                 data-name="emacs-pretest-24.0.90"
                 data-skip-pjax="true"
                 rel="nofollow"
                 class="js-navigation-open select-menu-item-text css-truncate-target"
                 title="emacs-pretest-24.0.90">emacs-pretest-24.0.90</a>
            </div>
            <div class="select-menu-item js-navigation-item ">
              <span class="select-menu-item-icon octicon octicon-check"></span>
              <a href="/emacs-mirror/emacs/tree/emacs-pretest-24.0.05/lisp/emacs-lisp/cl-lib.el"
                 data-name="emacs-pretest-24.0.05"
                 data-skip-pjax="true"
                 rel="nofollow"
                 class="js-navigation-open select-menu-item-text css-truncate-target"
                 title="emacs-pretest-24.0.05">emacs-pretest-24.0.05</a>
            </div>
            <div class="select-menu-item js-navigation-item ">
              <span class="select-menu-item-icon octicon octicon-check"></span>
              <a href="/emacs-mirror/emacs/tree/emacs-pretest-23.3.90/lisp/emacs-lisp/cl-lib.el"
                 data-name="emacs-pretest-23.3.90"
                 data-skip-pjax="true"
                 rel="nofollow"
                 class="js-navigation-open select-menu-item-text css-truncate-target"
                 title="emacs-pretest-23.3.90">emacs-pretest-23.3.90</a>
            </div>
            <div class="select-menu-item js-navigation-item ">
              <span class="select-menu-item-icon octicon octicon-check"></span>
              <a href="/emacs-mirror/emacs/tree/emacs-pretest-23.2.94/lisp/emacs-lisp/cl-lib.el"
                 data-name="emacs-pretest-23.2.94"
                 data-skip-pjax="true"
                 rel="nofollow"
                 class="js-navigation-open select-menu-item-text css-truncate-target"
                 title="emacs-pretest-23.2.94">emacs-pretest-23.2.94</a>
            </div>
            <div class="select-menu-item js-navigation-item ">
              <span class="select-menu-item-icon octicon octicon-check"></span>
              <a href="/emacs-mirror/emacs/tree/emacs-pretest-23.2.93.1/lisp/emacs-lisp/cl-lib.el"
                 data-name="emacs-pretest-23.2.93.1"
                 data-skip-pjax="true"
                 rel="nofollow"
                 class="js-navigation-open select-menu-item-text css-truncate-target"
                 title="emacs-pretest-23.2.93.1">emacs-pretest-23.2.93.1</a>
            </div>
            <div class="select-menu-item js-navigation-item ">
              <span class="select-menu-item-icon octicon octicon-check"></span>
              <a href="/emacs-mirror/emacs/tree/emacs-pretest-23.2.93/lisp/emacs-lisp/cl-lib.el"
                 data-name="emacs-pretest-23.2.93"
                 data-skip-pjax="true"
                 rel="nofollow"
                 class="js-navigation-open select-menu-item-text css-truncate-target"
                 title="emacs-pretest-23.2.93">emacs-pretest-23.2.93</a>
            </div>
            <div class="select-menu-item js-navigation-item ">
              <span class="select-menu-item-icon octicon octicon-check"></span>
              <a href="/emacs-mirror/emacs/tree/emacs-pretest-23.2.92/lisp/emacs-lisp/cl-lib.el"
                 data-name="emacs-pretest-23.2.92"
                 data-skip-pjax="true"
                 rel="nofollow"
                 class="js-navigation-open select-menu-item-text css-truncate-target"
                 title="emacs-pretest-23.2.92">emacs-pretest-23.2.92</a>
            </div>
            <div class="select-menu-item js-navigation-item ">
              <span class="select-menu-item-icon octicon octicon-check"></span>
              <a href="/emacs-mirror/emacs/tree/emacs-pretest-23.2.91/lisp/emacs-lisp/cl-lib.el"
                 data-name="emacs-pretest-23.2.91"
                 data-skip-pjax="true"
                 rel="nofollow"
                 class="js-navigation-open select-menu-item-text css-truncate-target"
                 title="emacs-pretest-23.2.91">emacs-pretest-23.2.91</a>
            </div>
            <div class="select-menu-item js-navigation-item ">
              <span class="select-menu-item-icon octicon octicon-check"></span>
              <a href="/emacs-mirror/emacs/tree/emacs-pretest-23.2.90/lisp/emacs-lisp/cl-lib.el"
                 data-name="emacs-pretest-23.2.90"
                 data-skip-pjax="true"
                 rel="nofollow"
                 class="js-navigation-open select-menu-item-text css-truncate-target"
                 title="emacs-pretest-23.2.90">emacs-pretest-23.2.90</a>
            </div>
            <div class="select-menu-item js-navigation-item ">
              <span class="select-menu-item-icon octicon octicon-check"></span>
              <a href="/emacs-mirror/emacs/tree/emacs-pretest-23.1.97/lisp/emacs-lisp/cl-lib.el"
                 data-name="emacs-pretest-23.1.97"
                 data-skip-pjax="true"
                 rel="nofollow"
                 class="js-navigation-open select-menu-item-text css-truncate-target"
                 title="emacs-pretest-23.1.97">emacs-pretest-23.1.97</a>
            </div>
            <div class="select-menu-item js-navigation-item ">
              <span class="select-menu-item-icon octicon octicon-check"></span>
              <a href="/emacs-mirror/emacs/tree/emacs-pretest-23.1.96/lisp/emacs-lisp/cl-lib.el"
                 data-name="emacs-pretest-23.1.96"
                 data-skip-pjax="true"
                 rel="nofollow"
                 class="js-navigation-open select-menu-item-text css-truncate-target"
                 title="emacs-pretest-23.1.96">emacs-pretest-23.1.96</a>
            </div>
            <div class="select-menu-item js-navigation-item ">
              <span class="select-menu-item-icon octicon octicon-check"></span>
              <a href="/emacs-mirror/emacs/tree/emacs-pretest-23.1.95/lisp/emacs-lisp/cl-lib.el"
                 data-name="emacs-pretest-23.1.95"
                 data-skip-pjax="true"
                 rel="nofollow"
                 class="js-navigation-open select-menu-item-text css-truncate-target"
                 title="emacs-pretest-23.1.95">emacs-pretest-23.1.95</a>
            </div>
            <div class="select-menu-item js-navigation-item ">
              <span class="select-menu-item-icon octicon octicon-check"></span>
              <a href="/emacs-mirror/emacs/tree/emacs-pretest-23.1.94/lisp/emacs-lisp/cl-lib.el"
                 data-name="emacs-pretest-23.1.94"
                 data-skip-pjax="true"
                 rel="nofollow"
                 class="js-navigation-open select-menu-item-text css-truncate-target"
                 title="emacs-pretest-23.1.94">emacs-pretest-23.1.94</a>
            </div>
            <div class="select-menu-item js-navigation-item ">
              <span class="select-menu-item-icon octicon octicon-check"></span>
              <a href="/emacs-mirror/emacs/tree/emacs-pretest-23.1.93/lisp/emacs-lisp/cl-lib.el"
                 data-name="emacs-pretest-23.1.93"
                 data-skip-pjax="true"
                 rel="nofollow"
                 class="js-navigation-open select-menu-item-text css-truncate-target"
                 title="emacs-pretest-23.1.93">emacs-pretest-23.1.93</a>
            </div>
            <div class="select-menu-item js-navigation-item ">
              <span class="select-menu-item-icon octicon octicon-check"></span>
              <a href="/emacs-mirror/emacs/tree/emacs-pretest-23.1.92/lisp/emacs-lisp/cl-lib.el"
                 data-name="emacs-pretest-23.1.92"
                 data-skip-pjax="true"
                 rel="nofollow"
                 class="js-navigation-open select-menu-item-text css-truncate-target"
                 title="emacs-pretest-23.1.92">emacs-pretest-23.1.92</a>
            </div>
            <div class="select-menu-item js-navigation-item ">
              <span class="select-menu-item-icon octicon octicon-check"></span>
              <a href="/emacs-mirror/emacs/tree/emacs-pretest-23.1.91/lisp/emacs-lisp/cl-lib.el"
                 data-name="emacs-pretest-23.1.91"
                 data-skip-pjax="true"
                 rel="nofollow"
                 class="js-navigation-open select-menu-item-text css-truncate-target"
                 title="emacs-pretest-23.1.91">emacs-pretest-23.1.91</a>
            </div>
            <div class="select-menu-item js-navigation-item ">
              <span class="select-menu-item-icon octicon octicon-check"></span>
              <a href="/emacs-mirror/emacs/tree/emacs-pretest-23.1.90/lisp/emacs-lisp/cl-lib.el"
                 data-name="emacs-pretest-23.1.90"
                 data-skip-pjax="true"
                 rel="nofollow"
                 class="js-navigation-open select-menu-item-text css-truncate-target"
                 title="emacs-pretest-23.1.90">emacs-pretest-23.1.90</a>
            </div>
            <div class="select-menu-item js-navigation-item ">
              <span class="select-menu-item-icon octicon octicon-check"></span>
              <a href="/emacs-mirror/emacs/tree/emacs-pretest-23.0.96/lisp/emacs-lisp/cl-lib.el"
                 data-name="emacs-pretest-23.0.96"
                 data-skip-pjax="true"
                 rel="nofollow"
                 class="js-navigation-open select-menu-item-text css-truncate-target"
                 title="emacs-pretest-23.0.96">emacs-pretest-23.0.96</a>
            </div>
            <div class="select-menu-item js-navigation-item ">
              <span class="select-menu-item-icon octicon octicon-check"></span>
              <a href="/emacs-mirror/emacs/tree/emacs-pretest-23.0.95/lisp/emacs-lisp/cl-lib.el"
                 data-name="emacs-pretest-23.0.95"
                 data-skip-pjax="true"
                 rel="nofollow"
                 class="js-navigation-open select-menu-item-text css-truncate-target"
                 title="emacs-pretest-23.0.95">emacs-pretest-23.0.95</a>
            </div>
            <div class="select-menu-item js-navigation-item ">
              <span class="select-menu-item-icon octicon octicon-check"></span>
              <a href="/emacs-mirror/emacs/tree/emacs-pretest-23.0.94/lisp/emacs-lisp/cl-lib.el"
                 data-name="emacs-pretest-23.0.94"
                 data-skip-pjax="true"
                 rel="nofollow"
                 class="js-navigation-open select-menu-item-text css-truncate-target"
                 title="emacs-pretest-23.0.94">emacs-pretest-23.0.94</a>
            </div>
            <div class="select-menu-item js-navigation-item ">
              <span class="select-menu-item-icon octicon octicon-check"></span>
              <a href="/emacs-mirror/emacs/tree/emacs-pretest-23.0.93/lisp/emacs-lisp/cl-lib.el"
                 data-name="emacs-pretest-23.0.93"
                 data-skip-pjax="true"
                 rel="nofollow"
                 class="js-navigation-open select-menu-item-text css-truncate-target"
                 title="emacs-pretest-23.0.93">emacs-pretest-23.0.93</a>
            </div>
            <div class="select-menu-item js-navigation-item ">
              <span class="select-menu-item-icon octicon octicon-check"></span>
              <a href="/emacs-mirror/emacs/tree/emacs-pretest-23.0.92/lisp/emacs-lisp/cl-lib.el"
                 data-name="emacs-pretest-23.0.92"
                 data-skip-pjax="true"
                 rel="nofollow"
                 class="js-navigation-open select-menu-item-text css-truncate-target"
                 title="emacs-pretest-23.0.92">emacs-pretest-23.0.92</a>
            </div>
            <div class="select-menu-item js-navigation-item ">
              <span class="select-menu-item-icon octicon octicon-check"></span>
              <a href="/emacs-mirror/emacs/tree/emacs-pretest-23.0.91/lisp/emacs-lisp/cl-lib.el"
                 data-name="emacs-pretest-23.0.91"
                 data-skip-pjax="true"
                 rel="nofollow"
                 class="js-navigation-open select-menu-item-text css-truncate-target"
                 title="emacs-pretest-23.0.91">emacs-pretest-23.0.91</a>
            </div>
            <div class="select-menu-item js-navigation-item ">
              <span class="select-menu-item-icon octicon octicon-check"></span>
              <a href="/emacs-mirror/emacs/tree/emacs-pretest-23.0.90/lisp/emacs-lisp/cl-lib.el"
                 data-name="emacs-pretest-23.0.90"
                 data-skip-pjax="true"
                 rel="nofollow"
                 class="js-navigation-open select-menu-item-text css-truncate-target"
                 title="emacs-pretest-23.0.90">emacs-pretest-23.0.90</a>
            </div>
            <div class="select-menu-item js-navigation-item ">
              <span class="select-menu-item-icon octicon octicon-check"></span>
              <a href="/emacs-mirror/emacs/tree/emacs-pretest-22.2.92/lisp/emacs-lisp/cl-lib.el"
                 data-name="emacs-pretest-22.2.92"
                 data-skip-pjax="true"
                 rel="nofollow"
                 class="js-navigation-open select-menu-item-text css-truncate-target"
                 title="emacs-pretest-22.2.92">emacs-pretest-22.2.92</a>
            </div>
            <div class="select-menu-item js-navigation-item ">
              <span class="select-menu-item-icon octicon octicon-check"></span>
              <a href="/emacs-mirror/emacs/tree/emacs-pretest-22.2.91/lisp/emacs-lisp/cl-lib.el"
                 data-name="emacs-pretest-22.2.91"
                 data-skip-pjax="true"
                 rel="nofollow"
                 class="js-navigation-open select-menu-item-text css-truncate-target"
                 title="emacs-pretest-22.2.91">emacs-pretest-22.2.91</a>
            </div>
            <div class="select-menu-item js-navigation-item ">
              <span class="select-menu-item-icon octicon octicon-check"></span>
              <a href="/emacs-mirror/emacs/tree/emacs-pretest-22.2.90/lisp/emacs-lisp/cl-lib.el"
                 data-name="emacs-pretest-22.2.90"
                 data-skip-pjax="true"
                 rel="nofollow"
                 class="js-navigation-open select-menu-item-text css-truncate-target"
                 title="emacs-pretest-22.2.90">emacs-pretest-22.2.90</a>
            </div>
            <div class="select-menu-item js-navigation-item ">
              <span class="select-menu-item-icon octicon octicon-check"></span>
              <a href="/emacs-mirror/emacs/tree/emacs-pretest-22.1.92/lisp/emacs-lisp/cl-lib.el"
                 data-name="emacs-pretest-22.1.92"
                 data-skip-pjax="true"
                 rel="nofollow"
                 class="js-navigation-open select-menu-item-text css-truncate-target"
                 title="emacs-pretest-22.1.92">emacs-pretest-22.1.92</a>
            </div>
            <div class="select-menu-item js-navigation-item ">
              <span class="select-menu-item-icon octicon octicon-check"></span>
              <a href="/emacs-mirror/emacs/tree/emacs-pretest-22.1.91/lisp/emacs-lisp/cl-lib.el"
                 data-name="emacs-pretest-22.1.91"
                 data-skip-pjax="true"
                 rel="nofollow"
                 class="js-navigation-open select-menu-item-text css-truncate-target"
                 title="emacs-pretest-22.1.91">emacs-pretest-22.1.91</a>
            </div>
            <div class="select-menu-item js-navigation-item ">
              <span class="select-menu-item-icon octicon octicon-check"></span>
              <a href="/emacs-mirror/emacs/tree/emacs-pretest-22.1.90/lisp/emacs-lisp/cl-lib.el"
                 data-name="emacs-pretest-22.1.90"
                 data-skip-pjax="true"
                 rel="nofollow"
                 class="js-navigation-open select-menu-item-text css-truncate-target"
                 title="emacs-pretest-22.1.90">emacs-pretest-22.1.90</a>
            </div>
            <div class="select-menu-item js-navigation-item ">
              <span class="select-menu-item-icon octicon octicon-check"></span>
              <a href="/emacs-mirror/emacs/tree/emacs-pretest-22.0.990/lisp/emacs-lisp/cl-lib.el"
                 data-name="emacs-pretest-22.0.990"
                 data-skip-pjax="true"
                 rel="nofollow"
                 class="js-navigation-open select-menu-item-text css-truncate-target"
                 title="emacs-pretest-22.0.990">emacs-pretest-22.0.990</a>
            </div>
            <div class="select-menu-item js-navigation-item ">
              <span class="select-menu-item-icon octicon octicon-check"></span>
              <a href="/emacs-mirror/emacs/tree/emacs-pretest-22.0.99/lisp/emacs-lisp/cl-lib.el"
                 data-name="emacs-pretest-22.0.99"
                 data-skip-pjax="true"
                 rel="nofollow"
                 class="js-navigation-open select-menu-item-text css-truncate-target"
                 title="emacs-pretest-22.0.99">emacs-pretest-22.0.99</a>
            </div>
            <div class="select-menu-item js-navigation-item ">
              <span class="select-menu-item-icon octicon octicon-check"></span>
              <a href="/emacs-mirror/emacs/tree/emacs-pretest-22.0.98/lisp/emacs-lisp/cl-lib.el"
                 data-name="emacs-pretest-22.0.98"
                 data-skip-pjax="true"
                 rel="nofollow"
                 class="js-navigation-open select-menu-item-text css-truncate-target"
                 title="emacs-pretest-22.0.98">emacs-pretest-22.0.98</a>
            </div>
            <div class="select-menu-item js-navigation-item ">
              <span class="select-menu-item-icon octicon octicon-check"></span>
              <a href="/emacs-mirror/emacs/tree/emacs-pretest-22.0.97/lisp/emacs-lisp/cl-lib.el"
                 data-name="emacs-pretest-22.0.97"
                 data-skip-pjax="true"
                 rel="nofollow"
                 class="js-navigation-open select-menu-item-text css-truncate-target"
                 title="emacs-pretest-22.0.97">emacs-pretest-22.0.97</a>
            </div>
            <div class="select-menu-item js-navigation-item ">
              <span class="select-menu-item-icon octicon octicon-check"></span>
              <a href="/emacs-mirror/emacs/tree/emacs-pretest-22.0.96/lisp/emacs-lisp/cl-lib.el"
                 data-name="emacs-pretest-22.0.96"
                 data-skip-pjax="true"
                 rel="nofollow"
                 class="js-navigation-open select-menu-item-text css-truncate-target"
                 title="emacs-pretest-22.0.96">emacs-pretest-22.0.96</a>
            </div>
            <div class="select-menu-item js-navigation-item ">
              <span class="select-menu-item-icon octicon octicon-check"></span>
              <a href="/emacs-mirror/emacs/tree/emacs-pretest-22.0.95/lisp/emacs-lisp/cl-lib.el"
                 data-name="emacs-pretest-22.0.95"
                 data-skip-pjax="true"
                 rel="nofollow"
                 class="js-navigation-open select-menu-item-text css-truncate-target"
                 title="emacs-pretest-22.0.95">emacs-pretest-22.0.95</a>
            </div>
            <div class="select-menu-item js-navigation-item ">
              <span class="select-menu-item-icon octicon octicon-check"></span>
              <a href="/emacs-mirror/emacs/tree/emacs-pretest-22.0.94/lisp/emacs-lisp/cl-lib.el"
                 data-name="emacs-pretest-22.0.94"
                 data-skip-pjax="true"
                 rel="nofollow"
                 class="js-navigation-open select-menu-item-text css-truncate-target"
                 title="emacs-pretest-22.0.94">emacs-pretest-22.0.94</a>
            </div>
            <div class="select-menu-item js-navigation-item ">
              <span class="select-menu-item-icon octicon octicon-check"></span>
              <a href="/emacs-mirror/emacs/tree/emacs-pretest-22.0.93/lisp/emacs-lisp/cl-lib.el"
                 data-name="emacs-pretest-22.0.93"
                 data-skip-pjax="true"
                 rel="nofollow"
                 class="js-navigation-open select-menu-item-text css-truncate-target"
                 title="emacs-pretest-22.0.93">emacs-pretest-22.0.93</a>
            </div>
            <div class="select-menu-item js-navigation-item ">
              <span class="select-menu-item-icon octicon octicon-check"></span>
              <a href="/emacs-mirror/emacs/tree/emacs-pretest-22.0.92/lisp/emacs-lisp/cl-lib.el"
                 data-name="emacs-pretest-22.0.92"
                 data-skip-pjax="true"
                 rel="nofollow"
                 class="js-navigation-open select-menu-item-text css-truncate-target"
                 title="emacs-pretest-22.0.92">emacs-pretest-22.0.92</a>
            </div>
            <div class="select-menu-item js-navigation-item ">
              <span class="select-menu-item-icon octicon octicon-check"></span>
              <a href="/emacs-mirror/emacs/tree/emacs-pretest-22.0.91/lisp/emacs-lisp/cl-lib.el"
                 data-name="emacs-pretest-22.0.91"
                 data-skip-pjax="true"
                 rel="nofollow"
                 class="js-navigation-open select-menu-item-text css-truncate-target"
                 title="emacs-pretest-22.0.91">emacs-pretest-22.0.91</a>
            </div>
            <div class="select-menu-item js-navigation-item ">
              <span class="select-menu-item-icon octicon octicon-check"></span>
              <a href="/emacs-mirror/emacs/tree/emacs-pretest-22.0.90/lisp/emacs-lisp/cl-lib.el"
                 data-name="emacs-pretest-22.0.90"
                 data-skip-pjax="true"
                 rel="nofollow"
                 class="js-navigation-open select-menu-item-text css-truncate-target"
                 title="emacs-pretest-22.0.90">emacs-pretest-22.0.90</a>
            </div>
            <div class="select-menu-item js-navigation-item ">
              <span class="select-menu-item-icon octicon octicon-check"></span>
              <a href="/emacs-mirror/emacs/tree/emacs-pretest-21.2.95/lisp/emacs-lisp/cl-lib.el"
                 data-name="emacs-pretest-21.2.95"
                 data-skip-pjax="true"
                 rel="nofollow"
                 class="js-navigation-open select-menu-item-text css-truncate-target"
                 title="emacs-pretest-21.2.95">emacs-pretest-21.2.95</a>
            </div>
            <div class="select-menu-item js-navigation-item ">
              <span class="select-menu-item-icon octicon octicon-check"></span>
              <a href="/emacs-mirror/emacs/tree/emacs-pretest-21.2.94/lisp/emacs-lisp/cl-lib.el"
                 data-name="emacs-pretest-21.2.94"
                 data-skip-pjax="true"
                 rel="nofollow"
                 class="js-navigation-open select-menu-item-text css-truncate-target"
                 title="emacs-pretest-21.2.94">emacs-pretest-21.2.94</a>
            </div>
            <div class="select-menu-item js-navigation-item ">
              <span class="select-menu-item-icon octicon octicon-check"></span>
              <a href="/emacs-mirror/emacs/tree/emacs-pretest-21.2.93/lisp/emacs-lisp/cl-lib.el"
                 data-name="emacs-pretest-21.2.93"
                 data-skip-pjax="true"
                 rel="nofollow"
                 class="js-navigation-open select-menu-item-text css-truncate-target"
                 title="emacs-pretest-21.2.93">emacs-pretest-21.2.93</a>
            </div>
            <div class="select-menu-item js-navigation-item ">
              <span class="select-menu-item-icon octicon octicon-check"></span>
              <a href="/emacs-mirror/emacs/tree/emacs-pretest-21.2.92/lisp/emacs-lisp/cl-lib.el"
                 data-name="emacs-pretest-21.2.92"
                 data-skip-pjax="true"
                 rel="nofollow"
                 class="js-navigation-open select-menu-item-text css-truncate-target"
                 title="emacs-pretest-21.2.92">emacs-pretest-21.2.92</a>
            </div>
            <div class="select-menu-item js-navigation-item ">
              <span class="select-menu-item-icon octicon octicon-check"></span>
              <a href="/emacs-mirror/emacs/tree/emacs-pretest-21.2.91/lisp/emacs-lisp/cl-lib.el"
                 data-name="emacs-pretest-21.2.91"
                 data-skip-pjax="true"
                 rel="nofollow"
                 class="js-navigation-open select-menu-item-text css-truncate-target"
                 title="emacs-pretest-21.2.91">emacs-pretest-21.2.91</a>
            </div>
            <div class="select-menu-item js-navigation-item ">
              <span class="select-menu-item-icon octicon octicon-check"></span>
              <a href="/emacs-mirror/emacs/tree/emacs-pretest-21.0.106/lisp/emacs-lisp/cl-lib.el"
                 data-name="emacs-pretest-21.0.106"
                 data-skip-pjax="true"
                 rel="nofollow"
                 class="js-navigation-open select-menu-item-text css-truncate-target"
                 title="emacs-pretest-21.0.106">emacs-pretest-21.0.106</a>
            </div>
            <div class="select-menu-item js-navigation-item ">
              <span class="select-menu-item-icon octicon octicon-check"></span>
              <a href="/emacs-mirror/emacs/tree/emacs-pretest-21.0.105/lisp/emacs-lisp/cl-lib.el"
                 data-name="emacs-pretest-21.0.105"
                 data-skip-pjax="true"
                 rel="nofollow"
                 class="js-navigation-open select-menu-item-text css-truncate-target"
                 title="emacs-pretest-21.0.105">emacs-pretest-21.0.105</a>
            </div>
            <div class="select-menu-item js-navigation-item ">
              <span class="select-menu-item-icon octicon octicon-check"></span>
              <a href="/emacs-mirror/emacs/tree/emacs-pretest-21.0.104/lisp/emacs-lisp/cl-lib.el"
                 data-name="emacs-pretest-21.0.104"
                 data-skip-pjax="true"
                 rel="nofollow"
                 class="js-navigation-open select-menu-item-text css-truncate-target"
                 title="emacs-pretest-21.0.104">emacs-pretest-21.0.104</a>
            </div>
            <div class="select-menu-item js-navigation-item ">
              <span class="select-menu-item-icon octicon octicon-check"></span>
              <a href="/emacs-mirror/emacs/tree/emacs-pretest-21.0.103/lisp/emacs-lisp/cl-lib.el"
                 data-name="emacs-pretest-21.0.103"
                 data-skip-pjax="true"
                 rel="nofollow"
                 class="js-navigation-open select-menu-item-text css-truncate-target"
                 title="emacs-pretest-21.0.103">emacs-pretest-21.0.103</a>
            </div>
            <div class="select-menu-item js-navigation-item ">
              <span class="select-menu-item-icon octicon octicon-check"></span>
              <a href="/emacs-mirror/emacs/tree/emacs-pretest-21.0.102/lisp/emacs-lisp/cl-lib.el"
                 data-name="emacs-pretest-21.0.102"
                 data-skip-pjax="true"
                 rel="nofollow"
                 class="js-navigation-open select-menu-item-text css-truncate-target"
                 title="emacs-pretest-21.0.102">emacs-pretest-21.0.102</a>
            </div>
            <div class="select-menu-item js-navigation-item ">
              <span class="select-menu-item-icon octicon octicon-check"></span>
              <a href="/emacs-mirror/emacs/tree/emacs-pretest-21.0.101/lisp/emacs-lisp/cl-lib.el"
                 data-name="emacs-pretest-21.0.101"
                 data-skip-pjax="true"
                 rel="nofollow"
                 class="js-navigation-open select-menu-item-text css-truncate-target"
                 title="emacs-pretest-21.0.101">emacs-pretest-21.0.101</a>
            </div>
            <div class="select-menu-item js-navigation-item ">
              <span class="select-menu-item-icon octicon octicon-check"></span>
              <a href="/emacs-mirror/emacs/tree/emacs-pretest-21.0.100/lisp/emacs-lisp/cl-lib.el"
                 data-name="emacs-pretest-21.0.100"
                 data-skip-pjax="true"
                 rel="nofollow"
                 class="js-navigation-open select-menu-item-text css-truncate-target"
                 title="emacs-pretest-21.0.100">emacs-pretest-21.0.100</a>
            </div>
            <div class="select-menu-item js-navigation-item ">
              <span class="select-menu-item-icon octicon octicon-check"></span>
              <a href="/emacs-mirror/emacs/tree/emacs-pretest-21.0.99/lisp/emacs-lisp/cl-lib.el"
                 data-name="emacs-pretest-21.0.99"
                 data-skip-pjax="true"
                 rel="nofollow"
                 class="js-navigation-open select-menu-item-text css-truncate-target"
                 title="emacs-pretest-21.0.99">emacs-pretest-21.0.99</a>
            </div>
            <div class="select-menu-item js-navigation-item ">
              <span class="select-menu-item-icon octicon octicon-check"></span>
              <a href="/emacs-mirror/emacs/tree/emacs-pretest-21.0.98/lisp/emacs-lisp/cl-lib.el"
                 data-name="emacs-pretest-21.0.98"
                 data-skip-pjax="true"
                 rel="nofollow"
                 class="js-navigation-open select-menu-item-text css-truncate-target"
                 title="emacs-pretest-21.0.98">emacs-pretest-21.0.98</a>
            </div>
            <div class="select-menu-item js-navigation-item ">
              <span class="select-menu-item-icon octicon octicon-check"></span>
              <a href="/emacs-mirror/emacs/tree/emacs-pretest-21.0.97/lisp/emacs-lisp/cl-lib.el"
                 data-name="emacs-pretest-21.0.97"
                 data-skip-pjax="true"
                 rel="nofollow"
                 class="js-navigation-open select-menu-item-text css-truncate-target"
                 title="emacs-pretest-21.0.97">emacs-pretest-21.0.97</a>
            </div>
            <div class="select-menu-item js-navigation-item ">
              <span class="select-menu-item-icon octicon octicon-check"></span>
              <a href="/emacs-mirror/emacs/tree/emacs-pretest-21.0.96/lisp/emacs-lisp/cl-lib.el"
                 data-name="emacs-pretest-21.0.96"
                 data-skip-pjax="true"
                 rel="nofollow"
                 class="js-navigation-open select-menu-item-text css-truncate-target"
                 title="emacs-pretest-21.0.96">emacs-pretest-21.0.96</a>
            </div>
            <div class="select-menu-item js-navigation-item ">
              <span class="select-menu-item-icon octicon octicon-check"></span>
              <a href="/emacs-mirror/emacs/tree/emacs-pretest-21.0.95/lisp/emacs-lisp/cl-lib.el"
                 data-name="emacs-pretest-21.0.95"
                 data-skip-pjax="true"
                 rel="nofollow"
                 class="js-navigation-open select-menu-item-text css-truncate-target"
                 title="emacs-pretest-21.0.95">emacs-pretest-21.0.95</a>
            </div>
            <div class="select-menu-item js-navigation-item ">
              <span class="select-menu-item-icon octicon octicon-check"></span>
              <a href="/emacs-mirror/emacs/tree/emacs-pretest-21.0.93/lisp/emacs-lisp/cl-lib.el"
                 data-name="emacs-pretest-21.0.93"
                 data-skip-pjax="true"
                 rel="nofollow"
                 class="js-navigation-open select-menu-item-text css-truncate-target"
                 title="emacs-pretest-21.0.93">emacs-pretest-21.0.93</a>
            </div>
            <div class="select-menu-item js-navigation-item ">
              <span class="select-menu-item-icon octicon octicon-check"></span>
              <a href="/emacs-mirror/emacs/tree/emacs-pretest-21.0.92/lisp/emacs-lisp/cl-lib.el"
                 data-name="emacs-pretest-21.0.92"
                 data-skip-pjax="true"
                 rel="nofollow"
                 class="js-navigation-open select-menu-item-text css-truncate-target"
                 title="emacs-pretest-21.0.92">emacs-pretest-21.0.92</a>
            </div>
            <div class="select-menu-item js-navigation-item ">
              <span class="select-menu-item-icon octicon octicon-check"></span>
              <a href="/emacs-mirror/emacs/tree/emacs-pretest-21.0.91/lisp/emacs-lisp/cl-lib.el"
                 data-name="emacs-pretest-21.0.91"
                 data-skip-pjax="true"
                 rel="nofollow"
                 class="js-navigation-open select-menu-item-text css-truncate-target"
                 title="emacs-pretest-21.0.91">emacs-pretest-21.0.91</a>
            </div>
            <div class="select-menu-item js-navigation-item ">
              <span class="select-menu-item-icon octicon octicon-check"></span>
              <a href="/emacs-mirror/emacs/tree/emacs-pretest-21.0.90/lisp/emacs-lisp/cl-lib.el"
                 data-name="emacs-pretest-21.0.90"
                 data-skip-pjax="true"
                 rel="nofollow"
                 class="js-navigation-open select-menu-item-text css-truncate-target"
                 title="emacs-pretest-21.0.90">emacs-pretest-21.0.90</a>
            </div>
            <div class="select-menu-item js-navigation-item ">
              <span class="select-menu-item-icon octicon octicon-check"></span>
              <a href="/emacs-mirror/emacs/tree/emacs-24.5-rc3-fixed/lisp/emacs-lisp/cl-lib.el"
                 data-name="emacs-24.5-rc3-fixed"
                 data-skip-pjax="true"
                 rel="nofollow"
                 class="js-navigation-open select-menu-item-text css-truncate-target"
                 title="emacs-24.5-rc3-fixed">emacs-24.5-rc3-fixed</a>
            </div>
            <div class="select-menu-item js-navigation-item ">
              <span class="select-menu-item-icon octicon octicon-check"></span>
              <a href="/emacs-mirror/emacs/tree/emacs-24.5-rc3/lisp/emacs-lisp/cl-lib.el"
                 data-name="emacs-24.5-rc3"
                 data-skip-pjax="true"
                 rel="nofollow"
                 class="js-navigation-open select-menu-item-text css-truncate-target"
                 title="emacs-24.5-rc3">emacs-24.5-rc3</a>
            </div>
            <div class="select-menu-item js-navigation-item ">
              <span class="select-menu-item-icon octicon octicon-check"></span>
              <a href="/emacs-mirror/emacs/tree/emacs-24.5-rc2/lisp/emacs-lisp/cl-lib.el"
                 data-name="emacs-24.5-rc2"
                 data-skip-pjax="true"
                 rel="nofollow"
                 class="js-navigation-open select-menu-item-text css-truncate-target"
                 title="emacs-24.5-rc2">emacs-24.5-rc2</a>
            </div>
            <div class="select-menu-item js-navigation-item ">
              <span class="select-menu-item-icon octicon octicon-check"></span>
              <a href="/emacs-mirror/emacs/tree/emacs-24.5-rc1/lisp/emacs-lisp/cl-lib.el"
                 data-name="emacs-24.5-rc1"
                 data-skip-pjax="true"
                 rel="nofollow"
                 class="js-navigation-open select-menu-item-text css-truncate-target"
                 title="emacs-24.5-rc1">emacs-24.5-rc1</a>
            </div>
            <div class="select-menu-item js-navigation-item ">
              <span class="select-menu-item-icon octicon octicon-check"></span>
              <a href="/emacs-mirror/emacs/tree/emacs-24.5/lisp/emacs-lisp/cl-lib.el"
                 data-name="emacs-24.5"
                 data-skip-pjax="true"
                 rel="nofollow"
                 class="js-navigation-open select-menu-item-text css-truncate-target"
                 title="emacs-24.5">emacs-24.5</a>
            </div>
            <div class="select-menu-item js-navigation-item ">
              <span class="select-menu-item-icon octicon octicon-check"></span>
              <a href="/emacs-mirror/emacs/tree/emacs-24.4-rc1/lisp/emacs-lisp/cl-lib.el"
                 data-name="emacs-24.4-rc1"
                 data-skip-pjax="true"
                 rel="nofollow"
                 class="js-navigation-open select-menu-item-text css-truncate-target"
                 title="emacs-24.4-rc1">emacs-24.4-rc1</a>
            </div>
            <div class="select-menu-item js-navigation-item ">
              <span class="select-menu-item-icon octicon octicon-check"></span>
              <a href="/emacs-mirror/emacs/tree/emacs-24.4.91/lisp/emacs-lisp/cl-lib.el"
                 data-name="emacs-24.4.91"
                 data-skip-pjax="true"
                 rel="nofollow"
                 class="js-navigation-open select-menu-item-text css-truncate-target"
                 title="emacs-24.4.91">emacs-24.4.91</a>
            </div>
            <div class="select-menu-item js-navigation-item ">
              <span class="select-menu-item-icon octicon octicon-check"></span>
              <a href="/emacs-mirror/emacs/tree/emacs-24.4.90/lisp/emacs-lisp/cl-lib.el"
                 data-name="emacs-24.4.90"
                 data-skip-pjax="true"
                 rel="nofollow"
                 class="js-navigation-open select-menu-item-text css-truncate-target"
                 title="emacs-24.4.90">emacs-24.4.90</a>
            </div>
            <div class="select-menu-item js-navigation-item ">
              <span class="select-menu-item-icon octicon octicon-check"></span>
              <a href="/emacs-mirror/emacs/tree/emacs-24.4/lisp/emacs-lisp/cl-lib.el"
                 data-name="emacs-24.4"
                 data-skip-pjax="true"
                 rel="nofollow"
                 class="js-navigation-open select-menu-item-text css-truncate-target"
                 title="emacs-24.4">emacs-24.4</a>
            </div>
            <div class="select-menu-item js-navigation-item ">
              <span class="select-menu-item-icon octicon octicon-check"></span>
              <a href="/emacs-mirror/emacs/tree/emacs-24.3-rc1/lisp/emacs-lisp/cl-lib.el"
                 data-name="emacs-24.3-rc1"
                 data-skip-pjax="true"
                 rel="nofollow"
                 class="js-navigation-open select-menu-item-text css-truncate-target"
                 title="emacs-24.3-rc1">emacs-24.3-rc1</a>
            </div>
            <div class="select-menu-item js-navigation-item ">
              <span class="select-menu-item-icon octicon octicon-check"></span>
              <a href="/emacs-mirror/emacs/tree/emacs-24.3.94/lisp/emacs-lisp/cl-lib.el"
                 data-name="emacs-24.3.94"
                 data-skip-pjax="true"
                 rel="nofollow"
                 class="js-navigation-open select-menu-item-text css-truncate-target"
                 title="emacs-24.3.94">emacs-24.3.94</a>
            </div>
            <div class="select-menu-item js-navigation-item ">
              <span class="select-menu-item-icon octicon octicon-check"></span>
              <a href="/emacs-mirror/emacs/tree/emacs-24.3.93/lisp/emacs-lisp/cl-lib.el"
                 data-name="emacs-24.3.93"
                 data-skip-pjax="true"
                 rel="nofollow"
                 class="js-navigation-open select-menu-item-text css-truncate-target"
                 title="emacs-24.3.93">emacs-24.3.93</a>
            </div>
            <div class="select-menu-item js-navigation-item ">
              <span class="select-menu-item-icon octicon octicon-check"></span>
              <a href="/emacs-mirror/emacs/tree/emacs-24.3.92/lisp/emacs-lisp/cl-lib.el"
                 data-name="emacs-24.3.92"
                 data-skip-pjax="true"
                 rel="nofollow"
                 class="js-navigation-open select-menu-item-text css-truncate-target"
                 title="emacs-24.3.92">emacs-24.3.92</a>
            </div>
            <div class="select-menu-item js-navigation-item ">
              <span class="select-menu-item-icon octicon octicon-check"></span>
              <a href="/emacs-mirror/emacs/tree/emacs-24.3.91/lisp/emacs-lisp/cl-lib.el"
                 data-name="emacs-24.3.91"
                 data-skip-pjax="true"
                 rel="nofollow"
                 class="js-navigation-open select-menu-item-text css-truncate-target"
                 title="emacs-24.3.91">emacs-24.3.91</a>
            </div>
            <div class="select-menu-item js-navigation-item ">
              <span class="select-menu-item-icon octicon octicon-check"></span>
              <a href="/emacs-mirror/emacs/tree/emacs-24.3.90/lisp/emacs-lisp/cl-lib.el"
                 data-name="emacs-24.3.90"
                 data-skip-pjax="true"
                 rel="nofollow"
                 class="js-navigation-open select-menu-item-text css-truncate-target"
                 title="emacs-24.3.90">emacs-24.3.90</a>
            </div>
            <div class="select-menu-item js-navigation-item ">
              <span class="select-menu-item-icon octicon octicon-check"></span>
              <a href="/emacs-mirror/emacs/tree/emacs-24.3/lisp/emacs-lisp/cl-lib.el"
                 data-name="emacs-24.3"
                 data-skip-pjax="true"
                 rel="nofollow"
                 class="js-navigation-open select-menu-item-text css-truncate-target"
                 title="emacs-24.3">emacs-24.3</a>
            </div>
            <div class="select-menu-item js-navigation-item ">
              <span class="select-menu-item-icon octicon octicon-check"></span>
              <a href="/emacs-mirror/emacs/tree/emacs-24.2.93/lisp/emacs-lisp/cl-lib.el"
                 data-name="emacs-24.2.93"
                 data-skip-pjax="true"
                 rel="nofollow"
                 class="js-navigation-open select-menu-item-text css-truncate-target"
                 title="emacs-24.2.93">emacs-24.2.93</a>
            </div>
            <div class="select-menu-item js-navigation-item ">
              <span class="select-menu-item-icon octicon octicon-check"></span>
              <a href="/emacs-mirror/emacs/tree/emacs-24.2.92/lisp/emacs-lisp/cl-lib.el"
                 data-name="emacs-24.2.92"
                 data-skip-pjax="true"
                 rel="nofollow"
                 class="js-navigation-open select-menu-item-text css-truncate-target"
                 title="emacs-24.2.92">emacs-24.2.92</a>
            </div>
            <div class="select-menu-item js-navigation-item ">
              <span class="select-menu-item-icon octicon octicon-check"></span>
              <a href="/emacs-mirror/emacs/tree/emacs-24.2.91/lisp/emacs-lisp/cl-lib.el"
                 data-name="emacs-24.2.91"
                 data-skip-pjax="true"
                 rel="nofollow"
                 class="js-navigation-open select-menu-item-text css-truncate-target"
                 title="emacs-24.2.91">emacs-24.2.91</a>
            </div>
            <div class="select-menu-item js-navigation-item ">
              <span class="select-menu-item-icon octicon octicon-check"></span>
              <a href="/emacs-mirror/emacs/tree/emacs-24.2.90/lisp/emacs-lisp/cl-lib.el"
                 data-name="emacs-24.2.90"
                 data-skip-pjax="true"
                 rel="nofollow"
                 class="js-navigation-open select-menu-item-text css-truncate-target"
                 title="emacs-24.2.90">emacs-24.2.90</a>
            </div>
            <div class="select-menu-item js-navigation-item ">
              <span class="select-menu-item-icon octicon octicon-check"></span>
              <a href="/emacs-mirror/emacs/tree/emacs-24.2/lisp/emacs-lisp/cl-lib.el"
                 data-name="emacs-24.2"
                 data-skip-pjax="true"
                 rel="nofollow"
                 class="js-navigation-open select-menu-item-text css-truncate-target"
                 title="emacs-24.2">emacs-24.2</a>
            </div>
            <div class="select-menu-item js-navigation-item ">
              <span class="select-menu-item-icon octicon octicon-check"></span>
              <a href="/emacs-mirror/emacs/tree/emacs-24.1/lisp/emacs-lisp/cl-lib.el"
                 data-name="emacs-24.1"
                 data-skip-pjax="true"
                 rel="nofollow"
                 class="js-navigation-open select-menu-item-text css-truncate-target"
                 title="emacs-24.1">emacs-24.1</a>
            </div>
            <div class="select-menu-item js-navigation-item ">
              <span class="select-menu-item-icon octicon octicon-check"></span>
              <a href="/emacs-mirror/emacs/tree/emacs-24.0.97/lisp/emacs-lisp/cl-lib.el"
                 data-name="emacs-24.0.97"
                 data-skip-pjax="true"
                 rel="nofollow"
                 class="js-navigation-open select-menu-item-text css-truncate-target"
                 title="emacs-24.0.97">emacs-24.0.97</a>
            </div>
            <div class="select-menu-item js-navigation-item ">
              <span class="select-menu-item-icon octicon octicon-check"></span>
              <a href="/emacs-mirror/emacs/tree/emacs-24.0.96/lisp/emacs-lisp/cl-lib.el"
                 data-name="emacs-24.0.96"
                 data-skip-pjax="true"
                 rel="nofollow"
                 class="js-navigation-open select-menu-item-text css-truncate-target"
                 title="emacs-24.0.96">emacs-24.0.96</a>
            </div>
            <div class="select-menu-item js-navigation-item ">
              <span class="select-menu-item-icon octicon octicon-check"></span>
              <a href="/emacs-mirror/emacs/tree/emacs-23.4/lisp/emacs-lisp/cl-lib.el"
                 data-name="emacs-23.4"
                 data-skip-pjax="true"
                 rel="nofollow"
                 class="js-navigation-open select-menu-item-text css-truncate-target"
                 title="emacs-23.4">emacs-23.4</a>
            </div>
            <div class="select-menu-item js-navigation-item ">
              <span class="select-menu-item-icon octicon octicon-check"></span>
              <a href="/emacs-mirror/emacs/tree/emacs-23.3/lisp/emacs-lisp/cl-lib.el"
                 data-name="emacs-23.3"
                 data-skip-pjax="true"
                 rel="nofollow"
                 class="js-navigation-open select-menu-item-text css-truncate-target"
                 title="emacs-23.3">emacs-23.3</a>
            </div>
            <div class="select-menu-item js-navigation-item ">
              <span class="select-menu-item-icon octicon octicon-check"></span>
              <a href="/emacs-mirror/emacs/tree/emacs-23.2/lisp/emacs-lisp/cl-lib.el"
                 data-name="emacs-23.2"
                 data-skip-pjax="true"
                 rel="nofollow"
                 class="js-navigation-open select-menu-item-text css-truncate-target"
                 title="emacs-23.2">emacs-23.2</a>
            </div>
            <div class="select-menu-item js-navigation-item ">
              <span class="select-menu-item-icon octicon octicon-check"></span>
              <a href="/emacs-mirror/emacs/tree/emacs-23.1/lisp/emacs-lisp/cl-lib.el"
                 data-name="emacs-23.1"
                 data-skip-pjax="true"
                 rel="nofollow"
                 class="js-navigation-open select-menu-item-text css-truncate-target"
                 title="emacs-23.1">emacs-23.1</a>
            </div>
            <div class="select-menu-item js-navigation-item ">
              <span class="select-menu-item-icon octicon octicon-check"></span>
              <a href="/emacs-mirror/emacs/tree/emacs-22.3/lisp/emacs-lisp/cl-lib.el"
                 data-name="emacs-22.3"
                 data-skip-pjax="true"
                 rel="nofollow"
                 class="js-navigation-open select-menu-item-text css-truncate-target"
                 title="emacs-22.3">emacs-22.3</a>
            </div>
            <div class="select-menu-item js-navigation-item ">
              <span class="select-menu-item-icon octicon octicon-check"></span>
              <a href="/emacs-mirror/emacs/tree/emacs-22.2/lisp/emacs-lisp/cl-lib.el"
                 data-name="emacs-22.2"
                 data-skip-pjax="true"
                 rel="nofollow"
                 class="js-navigation-open select-menu-item-text css-truncate-target"
                 title="emacs-22.2">emacs-22.2</a>
            </div>
        </div>

        <div class="select-menu-no-results">Nothing to show</div>
      </div>

    </div>
  </div>
</div>

  <div class="btn-group right">
    <a href="/emacs-mirror/emacs/find/master"
          class="js-show-file-finder btn btn-sm empty-icon tooltipped tooltipped-s"
          data-pjax
          data-hotkey="t"
          aria-label="Quickly jump between files">
      <span class="octicon octicon-list-unordered"></span>
    </a>
    <button aria-label="Copy file path to clipboard" class="js-zeroclipboard btn btn-sm zeroclipboard-button tooltipped tooltipped-s" data-copied-hint="Copied!" type="button"><span class="octicon octicon-clippy"></span></button>
  </div>

  <div class="breadcrumb js-zeroclipboard-target">
    <span class="repo-root js-repo-root"><span itemscope="" itemtype="http://data-vocabulary.org/Breadcrumb"><a href="/emacs-mirror/emacs" class="" data-branch="master" data-pjax="true" itemscope="url"><span itemprop="title">emacs</span></a></span></span><span class="separator">/</span><span itemscope="" itemtype="http://data-vocabulary.org/Breadcrumb"><a href="/emacs-mirror/emacs/tree/master/lisp" class="" data-branch="master" data-pjax="true" itemscope="url"><span itemprop="title">lisp</span></a></span><span class="separator">/</span><span itemscope="" itemtype="http://data-vocabulary.org/Breadcrumb"><a href="/emacs-mirror/emacs/tree/master/lisp/emacs-lisp" class="" data-branch="master" data-pjax="true" itemscope="url"><span itemprop="title">emacs-lisp</span></a></span><span class="separator">/</span><strong class="final-path">cl-lib.el</strong>
  </div>
</div>


  <div class="commit file-history-tease">
    <div class="file-history-tease-header">
        <img alt="@rgmorris" class="avatar" data-user="4054496" height="24" src="https://avatars0.githubusercontent.com/u/4054496?v=3&amp;s=48" width="24" />
        <span class="author"><a href="/rgmorris" rel="contributor">rgmorris</a></span>
        <time datetime="2015-05-13T23:02:31Z" is="relative-time">May 13, 2015</time>
        <div class="commit-title">
            <a href="/emacs-mirror/emacs/commit/912d4a4935c2ef0854df2b709ccd00710415ff1d" class="message" data-pjax="true" title="Fix bootstrap (void function cl-member).

* lisp/emacs-lisp/cl-lib.el: Load cl-seq if no cl-loaddefs file.
* lisp/emacs-lisp/cl-seq.el: Provide a feature.">Fix bootstrap (void function cl-member).</a>
        </div>
    </div>

    <div class="participation">
      <p class="quickstat">
        <a href="#blob_contributors_box" rel="facebox">
          <strong>5</strong>
          recent contributors
        </a>
      </p>
          <a class="avatar-link tooltipped tooltipped-s" aria-label="monnier" href="/emacs-mirror/emacs/commits/master/lisp/emacs-lisp/cl-lib.el?author=monnier"><img alt="@monnier" class="avatar" data-user="3629383" height="20" src="https://avatars0.githubusercontent.com/u/3629383?v=3&amp;s=40" width="20" /> </a>
    <a class="avatar-link tooltipped tooltipped-s" aria-label="rgmorris" href="/emacs-mirror/emacs/commits/master/lisp/emacs-lisp/cl-lib.el?author=rgmorris"><img alt="@rgmorris" class="avatar" data-user="4054496" height="20" src="https://avatars2.githubusercontent.com/u/4054496?v=3&amp;s=40" width="20" /> </a>
    <a class="avatar-link tooltipped tooltipped-s" aria-label="leoliu" href="/emacs-mirror/emacs/commits/master/lisp/emacs-lisp/cl-lib.el?author=leoliu"><img alt="@leoliu" class="avatar" data-user="406907" height="20" src="https://avatars2.githubusercontent.com/u/406907?v=3&amp;s=40" width="20" /> </a>
    <a class="avatar-link tooltipped tooltipped-s" aria-label="eggert" href="/emacs-mirror/emacs/commits/master/lisp/emacs-lisp/cl-lib.el?author=eggert"><img alt="@eggert" class="avatar" data-user="572024" height="20" src="https://avatars3.githubusercontent.com/u/572024?v=3&amp;s=40" width="20" /> </a>
    <a class="avatar-link tooltipped tooltipped-s" aria-label="lektu" href="/emacs-mirror/emacs/commits/master/lisp/emacs-lisp/cl-lib.el?author=lektu"><img alt="@lektu" class="avatar" data-user="833999" height="20" src="https://avatars0.githubusercontent.com/u/833999?v=3&amp;s=40" width="20" /> </a>


    </div>
    <div id="blob_contributors_box" style="display:none">
      <h2 class="facebox-header">Users who have contributed to this file recently</h2>
      <ul class="facebox-user-list">
          <li class="facebox-user-list-item">
            <img alt="@monnier" data-user="3629383" height="24" src="https://avatars2.githubusercontent.com/u/3629383?v=3&amp;s=48" width="24" />
            <a href="/monnier">monnier</a>
          </li>
          <li class="facebox-user-list-item">
            <img alt="@rgmorris" data-user="4054496" height="24" src="https://avatars0.githubusercontent.com/u/4054496?v=3&amp;s=48" width="24" />
            <a href="/rgmorris">rgmorris</a>
          </li>
          <li class="facebox-user-list-item">
            <img alt="@leoliu" data-user="406907" height="24" src="https://avatars0.githubusercontent.com/u/406907?v=3&amp;s=48" width="24" />
            <a href="/leoliu">leoliu</a>
          </li>
          <li class="facebox-user-list-item">
            <img alt="@eggert" data-user="572024" height="24" src="https://avatars1.githubusercontent.com/u/572024?v=3&amp;s=48" width="24" />
            <a href="/eggert">eggert</a>
          </li>
          <li class="facebox-user-list-item">
            <img alt="@lektu" data-user="833999" height="24" src="https://avatars2.githubusercontent.com/u/833999?v=3&amp;s=48" width="24" />
            <a href="/lektu">lektu</a>
          </li>
      </ul>
    </div>
  </div>

<div class="file">
  <div class="file-header">
    <div class="file-actions">

      <div class="btn-group">
        <a href="/emacs-mirror/emacs/raw/master/lisp/emacs-lisp/cl-lib.el" class="btn btn-sm " id="raw-url">Raw</a>
          <a href="/emacs-mirror/emacs/blame/master/lisp/emacs-lisp/cl-lib.el" class="btn btn-sm js-update-url-with-hash">Blame</a>
        <a href="/emacs-mirror/emacs/commits/master/lisp/emacs-lisp/cl-lib.el" class="btn btn-sm " rel="nofollow">History</a>
      </div>

        <a class="octicon-btn tooltipped tooltipped-nw"
           href="https://windows.github.com"
           aria-label="Open this file in GitHub for Windows"
           data-ga-click="Repository, open with desktop, type:windows">
            <span class="octicon octicon-device-desktop"></span>
        </a>

            <form accept-charset="UTF-8" action="/emacs-mirror/emacs/edit/master/lisp/emacs-lisp/cl-lib.el" class="inline-form" method="post"><div style="margin:0;padding:0;display:inline"><input name="utf8" type="hidden" value="&#x2713;" /><input name="authenticity_token" type="hidden" value="GUJNALyjyZ5f/KnMtQoNjaNzBpg7g6d2DCFUxf0nBF42KYv8sPseKBkMurTJz3F2BSxrD5kO/sSHKcKbQSgmZA==" /></div>
              <button class="octicon-btn tooltipped tooltipped-n" type="submit" aria-label="Fork this project and edit the file" data-hotkey="e" data-disable-with>
                <span class="octicon octicon-pencil"></span>
              </button>
</form>
          <form accept-charset="UTF-8" action="/emacs-mirror/emacs/delete/master/lisp/emacs-lisp/cl-lib.el" class="inline-form" method="post"><div style="margin:0;padding:0;display:inline"><input name="utf8" type="hidden" value="&#x2713;" /><input name="authenticity_token" type="hidden" value="WTKpyIcW5ArNvVy6ONaEW32Gmgmx7HUFHj3k78yQaRP0zezJATd7YKRXZCZG5AQX72NsolN3t0wpbUwGm/wbwQ==" /></div>
            <button class="octicon-btn octicon-btn-danger tooltipped tooltipped-n" type="submit" aria-label="Fork this project and delete this file" data-disable-with>
              <span class="octicon octicon-trashcan"></span>
            </button>
</form>    </div>

    <div class="file-info">
        744 lines (614 sloc)
        <span class="file-info-divider"></span>
      28.126 kB
    </div>
  </div>
  
  <div class="blob-wrapper data type-emacs-lisp">
      <table class="highlight tab-size js-file-line-container" data-tab-size="8">
      <tr>
        <td id="L1" class="blob-num js-line-number" data-line-number="1"></td>
        <td id="LC1" class="blob-code blob-code-inner js-file-line"><span class="pl-c">;;; cl-lib.el --- Common Lisp extensions for Emacs  -*- lexical-binding: t -*-</span></td>
      </tr>
      <tr>
        <td id="L2" class="blob-num js-line-number" data-line-number="2"></td>
        <td id="LC2" class="blob-code blob-code-inner js-file-line">
</td>
      </tr>
      <tr>
        <td id="L3" class="blob-num js-line-number" data-line-number="3"></td>
        <td id="LC3" class="blob-code blob-code-inner js-file-line"><span class="pl-c">;; Copyright (C) 1993, 2001-2015 Free Software Foundation, Inc.</span></td>
      </tr>
      <tr>
        <td id="L4" class="blob-num js-line-number" data-line-number="4"></td>
        <td id="LC4" class="blob-code blob-code-inner js-file-line">
</td>
      </tr>
      <tr>
        <td id="L5" class="blob-num js-line-number" data-line-number="5"></td>
        <td id="LC5" class="blob-code blob-code-inner js-file-line"><span class="pl-c">;; Author: Dave Gillespie &lt;daveg@synaptics.com&gt;</span></td>
      </tr>
      <tr>
        <td id="L6" class="blob-num js-line-number" data-line-number="6"></td>
        <td id="LC6" class="blob-code blob-code-inner js-file-line"><span class="pl-c">;; Version: 1.0</span></td>
      </tr>
      <tr>
        <td id="L7" class="blob-num js-line-number" data-line-number="7"></td>
        <td id="LC7" class="blob-code blob-code-inner js-file-line"><span class="pl-c">;; Keywords: extensions</span></td>
      </tr>
      <tr>
        <td id="L8" class="blob-num js-line-number" data-line-number="8"></td>
        <td id="LC8" class="blob-code blob-code-inner js-file-line">
</td>
      </tr>
      <tr>
        <td id="L9" class="blob-num js-line-number" data-line-number="9"></td>
        <td id="LC9" class="blob-code blob-code-inner js-file-line"><span class="pl-c">;; This file is part of GNU Emacs.</span></td>
      </tr>
      <tr>
        <td id="L10" class="blob-num js-line-number" data-line-number="10"></td>
        <td id="LC10" class="blob-code blob-code-inner js-file-line">
</td>
      </tr>
      <tr>
        <td id="L11" class="blob-num js-line-number" data-line-number="11"></td>
        <td id="LC11" class="blob-code blob-code-inner js-file-line"><span class="pl-c">;; GNU Emacs is free software: you can redistribute it and/or modify</span></td>
      </tr>
      <tr>
        <td id="L12" class="blob-num js-line-number" data-line-number="12"></td>
        <td id="LC12" class="blob-code blob-code-inner js-file-line"><span class="pl-c">;; it under the terms of the GNU General Public License as published by</span></td>
      </tr>
      <tr>
        <td id="L13" class="blob-num js-line-number" data-line-number="13"></td>
        <td id="LC13" class="blob-code blob-code-inner js-file-line"><span class="pl-c">;; the Free Software Foundation, either version 3 of the License, or</span></td>
      </tr>
      <tr>
        <td id="L14" class="blob-num js-line-number" data-line-number="14"></td>
        <td id="LC14" class="blob-code blob-code-inner js-file-line"><span class="pl-c">;; (at your option) any later version.</span></td>
      </tr>
      <tr>
        <td id="L15" class="blob-num js-line-number" data-line-number="15"></td>
        <td id="LC15" class="blob-code blob-code-inner js-file-line">
</td>
      </tr>
      <tr>
        <td id="L16" class="blob-num js-line-number" data-line-number="16"></td>
        <td id="LC16" class="blob-code blob-code-inner js-file-line"><span class="pl-c">;; GNU Emacs is distributed in the hope that it will be useful,</span></td>
      </tr>
      <tr>
        <td id="L17" class="blob-num js-line-number" data-line-number="17"></td>
        <td id="LC17" class="blob-code blob-code-inner js-file-line"><span class="pl-c">;; but WITHOUT ANY WARRANTY; without even the implied warranty of</span></td>
      </tr>
      <tr>
        <td id="L18" class="blob-num js-line-number" data-line-number="18"></td>
        <td id="LC18" class="blob-code blob-code-inner js-file-line"><span class="pl-c">;; MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the</span></td>
      </tr>
      <tr>
        <td id="L19" class="blob-num js-line-number" data-line-number="19"></td>
        <td id="LC19" class="blob-code blob-code-inner js-file-line"><span class="pl-c">;; GNU General Public License for more details.</span></td>
      </tr>
      <tr>
        <td id="L20" class="blob-num js-line-number" data-line-number="20"></td>
        <td id="LC20" class="blob-code blob-code-inner js-file-line">
</td>
      </tr>
      <tr>
        <td id="L21" class="blob-num js-line-number" data-line-number="21"></td>
        <td id="LC21" class="blob-code blob-code-inner js-file-line"><span class="pl-c">;; You should have received a copy of the GNU General Public License</span></td>
      </tr>
      <tr>
        <td id="L22" class="blob-num js-line-number" data-line-number="22"></td>
        <td id="LC22" class="blob-code blob-code-inner js-file-line"><span class="pl-c">;; along with GNU Emacs.  If not, see &lt;http://www.gnu.org/licenses/&gt;.</span></td>
      </tr>
      <tr>
        <td id="L23" class="blob-num js-line-number" data-line-number="23"></td>
        <td id="LC23" class="blob-code blob-code-inner js-file-line">
</td>
      </tr>
      <tr>
        <td id="L24" class="blob-num js-line-number" data-line-number="24"></td>
        <td id="LC24" class="blob-code blob-code-inner js-file-line"><span class="pl-c">;;; Commentary:</span></td>
      </tr>
      <tr>
        <td id="L25" class="blob-num js-line-number" data-line-number="25"></td>
        <td id="LC25" class="blob-code blob-code-inner js-file-line">
</td>
      </tr>
      <tr>
        <td id="L26" class="blob-num js-line-number" data-line-number="26"></td>
        <td id="LC26" class="blob-code blob-code-inner js-file-line"><span class="pl-c">;; These are extensions to Emacs Lisp that provide a degree of</span></td>
      </tr>
      <tr>
        <td id="L27" class="blob-num js-line-number" data-line-number="27"></td>
        <td id="LC27" class="blob-code blob-code-inner js-file-line"><span class="pl-c">;; Common Lisp compatibility, beyond what is already built-in</span></td>
      </tr>
      <tr>
        <td id="L28" class="blob-num js-line-number" data-line-number="28"></td>
        <td id="LC28" class="blob-code blob-code-inner js-file-line"><span class="pl-c">;; in Emacs Lisp.</span></td>
      </tr>
      <tr>
        <td id="L29" class="blob-num js-line-number" data-line-number="29"></td>
        <td id="LC29" class="blob-code blob-code-inner js-file-line"><span class="pl-c">;;</span></td>
      </tr>
      <tr>
        <td id="L30" class="blob-num js-line-number" data-line-number="30"></td>
        <td id="LC30" class="blob-code blob-code-inner js-file-line"><span class="pl-c">;; This package was written by Dave Gillespie; it is a complete</span></td>
      </tr>
      <tr>
        <td id="L31" class="blob-num js-line-number" data-line-number="31"></td>
        <td id="LC31" class="blob-code blob-code-inner js-file-line"><span class="pl-c">;; rewrite of Cesar Quiroz&#39;s original cl.el package of December 1986.</span></td>
      </tr>
      <tr>
        <td id="L32" class="blob-num js-line-number" data-line-number="32"></td>
        <td id="LC32" class="blob-code blob-code-inner js-file-line"><span class="pl-c">;;</span></td>
      </tr>
      <tr>
        <td id="L33" class="blob-num js-line-number" data-line-number="33"></td>
        <td id="LC33" class="blob-code blob-code-inner js-file-line"><span class="pl-c">;; Bug reports, comments, and suggestions are welcome!</span></td>
      </tr>
      <tr>
        <td id="L34" class="blob-num js-line-number" data-line-number="34"></td>
        <td id="LC34" class="blob-code blob-code-inner js-file-line">
</td>
      </tr>
      <tr>
        <td id="L35" class="blob-num js-line-number" data-line-number="35"></td>
        <td id="LC35" class="blob-code blob-code-inner js-file-line"><span class="pl-c">;; This file contains the portions of the Common Lisp extensions</span></td>
      </tr>
      <tr>
        <td id="L36" class="blob-num js-line-number" data-line-number="36"></td>
        <td id="LC36" class="blob-code blob-code-inner js-file-line"><span class="pl-c">;; package which should always be present.</span></td>
      </tr>
      <tr>
        <td id="L37" class="blob-num js-line-number" data-line-number="37"></td>
        <td id="LC37" class="blob-code blob-code-inner js-file-line">
</td>
      </tr>
      <tr>
        <td id="L38" class="blob-num js-line-number" data-line-number="38"></td>
        <td id="LC38" class="blob-code blob-code-inner js-file-line">
</td>
      </tr>
      <tr>
        <td id="L39" class="blob-num js-line-number" data-line-number="39"></td>
        <td id="LC39" class="blob-code blob-code-inner js-file-line"><span class="pl-c">;;; Change Log:</span></td>
      </tr>
      <tr>
        <td id="L40" class="blob-num js-line-number" data-line-number="40"></td>
        <td id="LC40" class="blob-code blob-code-inner js-file-line">
</td>
      </tr>
      <tr>
        <td id="L41" class="blob-num js-line-number" data-line-number="41"></td>
        <td id="LC41" class="blob-code blob-code-inner js-file-line"><span class="pl-c">;; Version 2.02 (30 Jul 93):</span></td>
      </tr>
      <tr>
        <td id="L42" class="blob-num js-line-number" data-line-number="42"></td>
        <td id="LC42" class="blob-code blob-code-inner js-file-line"><span class="pl-c">;;  * Added &quot;cl-compat.el&quot; file, extra compatibility with old package.</span></td>
      </tr>
      <tr>
        <td id="L43" class="blob-num js-line-number" data-line-number="43"></td>
        <td id="LC43" class="blob-code blob-code-inner js-file-line"><span class="pl-c">;;  * Added `lexical-let&#39; and `lexical-let*&#39;.</span></td>
      </tr>
      <tr>
        <td id="L44" class="blob-num js-line-number" data-line-number="44"></td>
        <td id="LC44" class="blob-code blob-code-inner js-file-line"><span class="pl-c">;;  * Added `define-modify-macro&#39;, `callf&#39;, and `callf2&#39;.</span></td>
      </tr>
      <tr>
        <td id="L45" class="blob-num js-line-number" data-line-number="45"></td>
        <td id="LC45" class="blob-code blob-code-inner js-file-line"><span class="pl-c">;;  * Added `ignore-errors&#39;.</span></td>
      </tr>
      <tr>
        <td id="L46" class="blob-num js-line-number" data-line-number="46"></td>
        <td id="LC46" class="blob-code blob-code-inner js-file-line"><span class="pl-c">;;  * Changed `(setf (nthcdr N PLACE) X)&#39; to work when N is zero.</span></td>
      </tr>
      <tr>
        <td id="L47" class="blob-num js-line-number" data-line-number="47"></td>
        <td id="LC47" class="blob-code blob-code-inner js-file-line"><span class="pl-c">;;  * Merged `*gentemp-counter*&#39; into `*gensym-counter*&#39;.</span></td>
      </tr>
      <tr>
        <td id="L48" class="blob-num js-line-number" data-line-number="48"></td>
        <td id="LC48" class="blob-code blob-code-inner js-file-line"><span class="pl-c">;;  * Extended `subseq&#39; to allow negative START and END like `substring&#39;.</span></td>
      </tr>
      <tr>
        <td id="L49" class="blob-num js-line-number" data-line-number="49"></td>
        <td id="LC49" class="blob-code blob-code-inner js-file-line"><span class="pl-c">;;  * Added `in-ref&#39;, `across-ref&#39;, `elements of-ref&#39; loop clauses.</span></td>
      </tr>
      <tr>
        <td id="L50" class="blob-num js-line-number" data-line-number="50"></td>
        <td id="LC50" class="blob-code blob-code-inner js-file-line"><span class="pl-c">;;  * Added `concat&#39;, `vconcat&#39; loop clauses.</span></td>
      </tr>
      <tr>
        <td id="L51" class="blob-num js-line-number" data-line-number="51"></td>
        <td id="LC51" class="blob-code blob-code-inner js-file-line"><span class="pl-c">;;  * Cleaned up a number of compiler warnings.</span></td>
      </tr>
      <tr>
        <td id="L52" class="blob-num js-line-number" data-line-number="52"></td>
        <td id="LC52" class="blob-code blob-code-inner js-file-line">
</td>
      </tr>
      <tr>
        <td id="L53" class="blob-num js-line-number" data-line-number="53"></td>
        <td id="LC53" class="blob-code blob-code-inner js-file-line"><span class="pl-c">;; Version 2.01 (7 Jul 93):</span></td>
      </tr>
      <tr>
        <td id="L54" class="blob-num js-line-number" data-line-number="54"></td>
        <td id="LC54" class="blob-code blob-code-inner js-file-line"><span class="pl-c">;;  * Added support for FSF version of Emacs 19.</span></td>
      </tr>
      <tr>
        <td id="L55" class="blob-num js-line-number" data-line-number="55"></td>
        <td id="LC55" class="blob-code blob-code-inner js-file-line"><span class="pl-c">;;  * Added `add-hook&#39; for Emacs 18 users.</span></td>
      </tr>
      <tr>
        <td id="L56" class="blob-num js-line-number" data-line-number="56"></td>
        <td id="LC56" class="blob-code blob-code-inner js-file-line"><span class="pl-c">;;  * Added `defsubst*&#39; and `symbol-macrolet&#39;.</span></td>
      </tr>
      <tr>
        <td id="L57" class="blob-num js-line-number" data-line-number="57"></td>
        <td id="LC57" class="blob-code blob-code-inner js-file-line"><span class="pl-c">;;  * Added `maplist&#39;, `mapc&#39;, `mapl&#39;, `mapcan&#39;, `mapcon&#39;.</span></td>
      </tr>
      <tr>
        <td id="L58" class="blob-num js-line-number" data-line-number="58"></td>
        <td id="LC58" class="blob-code blob-code-inner js-file-line"><span class="pl-c">;;  * Added `map&#39;, `concatenate&#39;, `reduce&#39;, `merge&#39;.</span></td>
      </tr>
      <tr>
        <td id="L59" class="blob-num js-line-number" data-line-number="59"></td>
        <td id="LC59" class="blob-code blob-code-inner js-file-line"><span class="pl-c">;;  * Added `revappend&#39;, `nreconc&#39;, `tailp&#39;, `tree-equal&#39;.</span></td>
      </tr>
      <tr>
        <td id="L60" class="blob-num js-line-number" data-line-number="60"></td>
        <td id="LC60" class="blob-code blob-code-inner js-file-line"><span class="pl-c">;;  * Added `assert&#39;, `check-type&#39;, `typecase&#39;, `typep&#39;, and `deftype&#39;.</span></td>
      </tr>
      <tr>
        <td id="L61" class="blob-num js-line-number" data-line-number="61"></td>
        <td id="LC61" class="blob-code blob-code-inner js-file-line"><span class="pl-c">;;  * Added destructuring and `&amp;environment&#39; support to `defmacro*&#39;.</span></td>
      </tr>
      <tr>
        <td id="L62" class="blob-num js-line-number" data-line-number="62"></td>
        <td id="LC62" class="blob-code blob-code-inner js-file-line"><span class="pl-c">;;  * Added destructuring to `loop&#39;, and added the following clauses:</span></td>
      </tr>
      <tr>
        <td id="L63" class="blob-num js-line-number" data-line-number="63"></td>
        <td id="LC63" class="blob-code blob-code-inner js-file-line"><span class="pl-c">;;      `elements&#39;, `frames&#39;, `overlays&#39;, `intervals&#39;, `buffers&#39;, `key-seqs&#39;.</span></td>
      </tr>
      <tr>
        <td id="L64" class="blob-num js-line-number" data-line-number="64"></td>
        <td id="LC64" class="blob-code blob-code-inner js-file-line"><span class="pl-c">;;  * Renamed `delete&#39; to `delete*&#39; and `remove&#39; to `remove*&#39;.</span></td>
      </tr>
      <tr>
        <td id="L65" class="blob-num js-line-number" data-line-number="65"></td>
        <td id="LC65" class="blob-code blob-code-inner js-file-line"><span class="pl-c">;;  * Completed support for all keywords in `remove*&#39;, `substitute&#39;, etc.</span></td>
      </tr>
      <tr>
        <td id="L66" class="blob-num js-line-number" data-line-number="66"></td>
        <td id="LC66" class="blob-code blob-code-inner js-file-line"><span class="pl-c">;;  * Added `most-positive-float&#39; and company.</span></td>
      </tr>
      <tr>
        <td id="L67" class="blob-num js-line-number" data-line-number="67"></td>
        <td id="LC67" class="blob-code blob-code-inner js-file-line"><span class="pl-c">;;  * Fixed hash tables to work with latest Lucid Emacs.</span></td>
      </tr>
      <tr>
        <td id="L68" class="blob-num js-line-number" data-line-number="68"></td>
        <td id="LC68" class="blob-code blob-code-inner js-file-line"><span class="pl-c">;;  * `proclaim&#39; forms are no longer compile-time-evaluating; use `declaim&#39;.</span></td>
      </tr>
      <tr>
        <td id="L69" class="blob-num js-line-number" data-line-number="69"></td>
        <td id="LC69" class="blob-code blob-code-inner js-file-line"><span class="pl-c">;;  * Syntax for `warn&#39; declarations has changed.</span></td>
      </tr>
      <tr>
        <td id="L70" class="blob-num js-line-number" data-line-number="70"></td>
        <td id="LC70" class="blob-code blob-code-inner js-file-line"><span class="pl-c">;;  * Improved implementation of `random*&#39;.</span></td>
      </tr>
      <tr>
        <td id="L71" class="blob-num js-line-number" data-line-number="71"></td>
        <td id="LC71" class="blob-code blob-code-inner js-file-line"><span class="pl-c">;;  * Moved most sequence functions to a new file, cl-seq.el.</span></td>
      </tr>
      <tr>
        <td id="L72" class="blob-num js-line-number" data-line-number="72"></td>
        <td id="LC72" class="blob-code blob-code-inner js-file-line"><span class="pl-c">;;  * Moved `eval-when&#39; into cl-macs.el.</span></td>
      </tr>
      <tr>
        <td id="L73" class="blob-num js-line-number" data-line-number="73"></td>
        <td id="LC73" class="blob-code blob-code-inner js-file-line"><span class="pl-c">;;  * Moved `pushnew&#39; and `adjoin&#39; to cl.el for most common cases.</span></td>
      </tr>
      <tr>
        <td id="L74" class="blob-num js-line-number" data-line-number="74"></td>
        <td id="LC74" class="blob-code blob-code-inner js-file-line"><span class="pl-c">;;  * Moved `provide&#39; forms down to ends of files.</span></td>
      </tr>
      <tr>
        <td id="L75" class="blob-num js-line-number" data-line-number="75"></td>
        <td id="LC75" class="blob-code blob-code-inner js-file-line"><span class="pl-c">;;  * Changed expansion of `pop&#39; to something that compiles to better code.</span></td>
      </tr>
      <tr>
        <td id="L76" class="blob-num js-line-number" data-line-number="76"></td>
        <td id="LC76" class="blob-code blob-code-inner js-file-line"><span class="pl-c">;;  * Changed so that no patch is required for Emacs 19 byte compiler.</span></td>
      </tr>
      <tr>
        <td id="L77" class="blob-num js-line-number" data-line-number="77"></td>
        <td id="LC77" class="blob-code blob-code-inner js-file-line"><span class="pl-c">;;  * Made more things dependent on `optimize&#39; declarations.</span></td>
      </tr>
      <tr>
        <td id="L78" class="blob-num js-line-number" data-line-number="78"></td>
        <td id="LC78" class="blob-code blob-code-inner js-file-line"><span class="pl-c">;;  * Added a partial implementation of struct print functions.</span></td>
      </tr>
      <tr>
        <td id="L79" class="blob-num js-line-number" data-line-number="79"></td>
        <td id="LC79" class="blob-code blob-code-inner js-file-line"><span class="pl-c">;;  * Miscellaneous minor changes.</span></td>
      </tr>
      <tr>
        <td id="L80" class="blob-num js-line-number" data-line-number="80"></td>
        <td id="LC80" class="blob-code blob-code-inner js-file-line">
</td>
      </tr>
      <tr>
        <td id="L81" class="blob-num js-line-number" data-line-number="81"></td>
        <td id="LC81" class="blob-code blob-code-inner js-file-line"><span class="pl-c">;; Version 2.00:</span></td>
      </tr>
      <tr>
        <td id="L82" class="blob-num js-line-number" data-line-number="82"></td>
        <td id="LC82" class="blob-code blob-code-inner js-file-line"><span class="pl-c">;;  * First public release of this package.</span></td>
      </tr>
      <tr>
        <td id="L83" class="blob-num js-line-number" data-line-number="83"></td>
        <td id="LC83" class="blob-code blob-code-inner js-file-line">
</td>
      </tr>
      <tr>
        <td id="L84" class="blob-num js-line-number" data-line-number="84"></td>
        <td id="LC84" class="blob-code blob-code-inner js-file-line">
</td>
      </tr>
      <tr>
        <td id="L85" class="blob-num js-line-number" data-line-number="85"></td>
        <td id="LC85" class="blob-code blob-code-inner js-file-line"><span class="pl-c">;;; Code:</span></td>
      </tr>
      <tr>
        <td id="L86" class="blob-num js-line-number" data-line-number="86"></td>
        <td id="LC86" class="blob-code blob-code-inner js-file-line">
</td>
      </tr>
      <tr>
        <td id="L87" class="blob-num js-line-number" data-line-number="87"></td>
        <td id="LC87" class="blob-code blob-code-inner js-file-line">(require &#39;macroexp)</td>
      </tr>
      <tr>
        <td id="L88" class="blob-num js-line-number" data-line-number="88"></td>
        <td id="LC88" class="blob-code blob-code-inner js-file-line">
</td>
      </tr>
      <tr>
        <td id="L89" class="blob-num js-line-number" data-line-number="89"></td>
        <td id="LC89" class="blob-code blob-code-inner js-file-line">(defvar cl--optimize-speed <span class="pl-c1">1</span>)</td>
      </tr>
      <tr>
        <td id="L90" class="blob-num js-line-number" data-line-number="90"></td>
        <td id="LC90" class="blob-code blob-code-inner js-file-line">(defvar cl--optimize-safety <span class="pl-c1">1</span>)</td>
      </tr>
      <tr>
        <td id="L91" class="blob-num js-line-number" data-line-number="91"></td>
        <td id="LC91" class="blob-code blob-code-inner js-file-line">
</td>
      </tr>
      <tr>
        <td id="L92" class="blob-num js-line-number" data-line-number="92"></td>
        <td id="LC92" class="blob-code blob-code-inner js-file-line"><span class="pl-c">;;;###autoload</span></td>
      </tr>
      <tr>
        <td id="L93" class="blob-num js-line-number" data-line-number="93"></td>
        <td id="LC93" class="blob-code blob-code-inner js-file-line">(define-obsolete-variable-alias</td>
      </tr>
      <tr>
        <td id="L94" class="blob-num js-line-number" data-line-number="94"></td>
        <td id="LC94" class="blob-code blob-code-inner js-file-line">  <span class="pl-c">;; This alias is needed for compatibility with .elc files that use defstruct</span></td>
      </tr>
      <tr>
        <td id="L95" class="blob-num js-line-number" data-line-number="95"></td>
        <td id="LC95" class="blob-code blob-code-inner js-file-line">  <span class="pl-c">;; and were compiled with Emacs&lt;24.3.</span></td>
      </tr>
      <tr>
        <td id="L96" class="blob-num js-line-number" data-line-number="96"></td>
        <td id="LC96" class="blob-code blob-code-inner js-file-line">  &#39;custom-print-functions &#39;cl-custom-print-functions <span class="pl-s"><span class="pl-pds">&quot;</span>24.3<span class="pl-pds">&quot;</span></span>)</td>
      </tr>
      <tr>
        <td id="L97" class="blob-num js-line-number" data-line-number="97"></td>
        <td id="LC97" class="blob-code blob-code-inner js-file-line">
</td>
      </tr>
      <tr>
        <td id="L98" class="blob-num js-line-number" data-line-number="98"></td>
        <td id="LC98" class="blob-code blob-code-inner js-file-line"><span class="pl-c">;;;###autoload</span></td>
      </tr>
      <tr>
        <td id="L99" class="blob-num js-line-number" data-line-number="99"></td>
        <td id="LC99" class="blob-code blob-code-inner js-file-line">(defvar cl-custom-print-functions <span class="pl-c1">nil</span></td>
      </tr>
      <tr>
        <td id="L100" class="blob-num js-line-number" data-line-number="100"></td>
        <td id="LC100" class="blob-code blob-code-inner js-file-line">  <span class="pl-s"><span class="pl-pds">&quot;</span>This is a list of functions that format user objects for printing.</span></td>
      </tr>
      <tr>
        <td id="L101" class="blob-num js-line-number" data-line-number="101"></td>
        <td id="LC101" class="blob-code blob-code-inner js-file-line"><span class="pl-s">Each function is called in turn with three arguments: the object, the</span></td>
      </tr>
      <tr>
        <td id="L102" class="blob-num js-line-number" data-line-number="102"></td>
        <td id="LC102" class="blob-code blob-code-inner js-file-line"><span class="pl-s">stream, and the print level (currently ignored).  If it is able to</span></td>
      </tr>
      <tr>
        <td id="L103" class="blob-num js-line-number" data-line-number="103"></td>
        <td id="LC103" class="blob-code blob-code-inner js-file-line"><span class="pl-s">print the object it returns true; otherwise it returns nil and the</span></td>
      </tr>
      <tr>
        <td id="L104" class="blob-num js-line-number" data-line-number="104"></td>
        <td id="LC104" class="blob-code blob-code-inner js-file-line"><span class="pl-s">printer proceeds to the next function on the list.</span></td>
      </tr>
      <tr>
        <td id="L105" class="blob-num js-line-number" data-line-number="105"></td>
        <td id="LC105" class="blob-code blob-code-inner js-file-line"><span class="pl-s"></span></td>
      </tr>
      <tr>
        <td id="L106" class="blob-num js-line-number" data-line-number="106"></td>
        <td id="LC106" class="blob-code blob-code-inner js-file-line"><span class="pl-s">This variable is not used at present, but it is defined in hopes that</span></td>
      </tr>
      <tr>
        <td id="L107" class="blob-num js-line-number" data-line-number="107"></td>
        <td id="LC107" class="blob-code blob-code-inner js-file-line"><span class="pl-s">a future Emacs interpreter will be able to use it.<span class="pl-pds">&quot;</span></span>)</td>
      </tr>
      <tr>
        <td id="L108" class="blob-num js-line-number" data-line-number="108"></td>
        <td id="LC108" class="blob-code blob-code-inner js-file-line">
</td>
      </tr>
      <tr>
        <td id="L109" class="blob-num js-line-number" data-line-number="109"></td>
        <td id="LC109" class="blob-code blob-code-inner js-file-line"><span class="pl-c">;;; Generalized variables.</span></td>
      </tr>
      <tr>
        <td id="L110" class="blob-num js-line-number" data-line-number="110"></td>
        <td id="LC110" class="blob-code blob-code-inner js-file-line"><span class="pl-c">;; These macros are defined here so that they</span></td>
      </tr>
      <tr>
        <td id="L111" class="blob-num js-line-number" data-line-number="111"></td>
        <td id="LC111" class="blob-code blob-code-inner js-file-line"><span class="pl-c">;; can safely be used in init files.</span></td>
      </tr>
      <tr>
        <td id="L112" class="blob-num js-line-number" data-line-number="112"></td>
        <td id="LC112" class="blob-code blob-code-inner js-file-line">
</td>
      </tr>
      <tr>
        <td id="L113" class="blob-num js-line-number" data-line-number="113"></td>
        <td id="LC113" class="blob-code blob-code-inner js-file-line">(<span class="pl-k">defmacro</span> <span class="pl-en">cl-incf</span> (place &amp;optional x)</td>
      </tr>
      <tr>
        <td id="L114" class="blob-num js-line-number" data-line-number="114"></td>
        <td id="LC114" class="blob-code blob-code-inner js-file-line">  <span class="pl-s"><span class="pl-pds">&quot;</span>Increment PLACE by X (1 by default).</span></td>
      </tr>
      <tr>
        <td id="L115" class="blob-num js-line-number" data-line-number="115"></td>
        <td id="LC115" class="blob-code blob-code-inner js-file-line"><span class="pl-s">PLACE may be a symbol, or any generalized variable allowed by `setf&#39;.</span></td>
      </tr>
      <tr>
        <td id="L116" class="blob-num js-line-number" data-line-number="116"></td>
        <td id="LC116" class="blob-code blob-code-inner js-file-line"><span class="pl-s">The return value is the incremented value of PLACE.<span class="pl-pds">&quot;</span></span></td>
      </tr>
      <tr>
        <td id="L117" class="blob-num js-line-number" data-line-number="117"></td>
        <td id="LC117" class="blob-code blob-code-inner js-file-line">  (declare (debug (place &amp;optional form)))</td>
      </tr>
      <tr>
        <td id="L118" class="blob-num js-line-number" data-line-number="118"></td>
        <td id="LC118" class="blob-code blob-code-inner js-file-line">  (<span class="pl-k">if</span> (symbolp place)</td>
      </tr>
      <tr>
        <td id="L119" class="blob-num js-line-number" data-line-number="119"></td>
        <td id="LC119" class="blob-code blob-code-inner js-file-line">      (<span class="pl-c1">list</span> &#39;<span class="pl-c1">setq</span> place (<span class="pl-k">if</span> x (<span class="pl-c1">list</span> &#39;+ place x) (<span class="pl-c1">list</span> &#39;<span class="pl-c1">1</span>+ place)))</td>
      </tr>
      <tr>
        <td id="L120" class="blob-num js-line-number" data-line-number="120"></td>
        <td id="LC120" class="blob-code blob-code-inner js-file-line">    (<span class="pl-c1">list</span> &#39;cl-callf &#39;+ place (<span class="pl-k">or</span> x <span class="pl-c1">1</span>))))</td>
      </tr>
      <tr>
        <td id="L121" class="blob-num js-line-number" data-line-number="121"></td>
        <td id="LC121" class="blob-code blob-code-inner js-file-line">
</td>
      </tr>
      <tr>
        <td id="L122" class="blob-num js-line-number" data-line-number="122"></td>
        <td id="LC122" class="blob-code blob-code-inner js-file-line">(<span class="pl-k">defmacro</span> <span class="pl-en">cl-decf</span> (place &amp;optional x)</td>
      </tr>
      <tr>
        <td id="L123" class="blob-num js-line-number" data-line-number="123"></td>
        <td id="LC123" class="blob-code blob-code-inner js-file-line">  <span class="pl-s"><span class="pl-pds">&quot;</span>Decrement PLACE by X (1 by default).</span></td>
      </tr>
      <tr>
        <td id="L124" class="blob-num js-line-number" data-line-number="124"></td>
        <td id="LC124" class="blob-code blob-code-inner js-file-line"><span class="pl-s">PLACE may be a symbol, or any generalized variable allowed by `setf&#39;.</span></td>
      </tr>
      <tr>
        <td id="L125" class="blob-num js-line-number" data-line-number="125"></td>
        <td id="LC125" class="blob-code blob-code-inner js-file-line"><span class="pl-s">The return value is the decremented value of PLACE.<span class="pl-pds">&quot;</span></span></td>
      </tr>
      <tr>
        <td id="L126" class="blob-num js-line-number" data-line-number="126"></td>
        <td id="LC126" class="blob-code blob-code-inner js-file-line">  (declare (debug cl-incf))</td>
      </tr>
      <tr>
        <td id="L127" class="blob-num js-line-number" data-line-number="127"></td>
        <td id="LC127" class="blob-code blob-code-inner js-file-line">  (<span class="pl-k">if</span> (symbolp place)</td>
      </tr>
      <tr>
        <td id="L128" class="blob-num js-line-number" data-line-number="128"></td>
        <td id="LC128" class="blob-code blob-code-inner js-file-line">      (<span class="pl-c1">list</span> &#39;<span class="pl-c1">setq</span> place (<span class="pl-k">if</span> x (<span class="pl-c1">list</span> &#39;- place x) (<span class="pl-c1">list</span> &#39;<span class="pl-c1">1</span>- place)))</td>
      </tr>
      <tr>
        <td id="L129" class="blob-num js-line-number" data-line-number="129"></td>
        <td id="LC129" class="blob-code blob-code-inner js-file-line">    (<span class="pl-c1">list</span> &#39;cl-callf &#39;- place (<span class="pl-k">or</span> x <span class="pl-c1">1</span>))))</td>
      </tr>
      <tr>
        <td id="L130" class="blob-num js-line-number" data-line-number="130"></td>
        <td id="LC130" class="blob-code blob-code-inner js-file-line">
</td>
      </tr>
      <tr>
        <td id="L131" class="blob-num js-line-number" data-line-number="131"></td>
        <td id="LC131" class="blob-code blob-code-inner js-file-line">(<span class="pl-k">defmacro</span> <span class="pl-en">cl-pushnew</span> (x place &amp;rest keys)</td>
      </tr>
      <tr>
        <td id="L132" class="blob-num js-line-number" data-line-number="132"></td>
        <td id="LC132" class="blob-code blob-code-inner js-file-line">  <span class="pl-s"><span class="pl-pds">&quot;</span>(cl-pushnew X PLACE): insert X at the head of the list if not already there.</span></td>
      </tr>
      <tr>
        <td id="L133" class="blob-num js-line-number" data-line-number="133"></td>
        <td id="LC133" class="blob-code blob-code-inner js-file-line"><span class="pl-s">Like (push X PLACE), except that the list is unmodified if X is `eql&#39; to</span></td>
      </tr>
      <tr>
        <td id="L134" class="blob-num js-line-number" data-line-number="134"></td>
        <td id="LC134" class="blob-code blob-code-inner js-file-line"><span class="pl-s">an element already on the list.</span></td>
      </tr>
      <tr>
        <td id="L135" class="blob-num js-line-number" data-line-number="135"></td>
        <td id="LC135" class="blob-code blob-code-inner js-file-line"><span class="pl-s"><span class="pl-cce">\n</span>Keywords supported:  :test :test-not :key</span></td>
      </tr>
      <tr>
        <td id="L136" class="blob-num js-line-number" data-line-number="136"></td>
        <td id="LC136" class="blob-code blob-code-inner js-file-line"><span class="pl-s"><span class="pl-cce">\n</span>(fn X PLACE [KEYWORD VALUE]...)<span class="pl-pds">&quot;</span></span></td>
      </tr>
      <tr>
        <td id="L137" class="blob-num js-line-number" data-line-number="137"></td>
        <td id="LC137" class="blob-code blob-code-inner js-file-line">  (declare (debug</td>
      </tr>
      <tr>
        <td id="L138" class="blob-num js-line-number" data-line-number="138"></td>
        <td id="LC138" class="blob-code blob-code-inner js-file-line">            (form place &amp;rest</td>
      </tr>
      <tr>
        <td id="L139" class="blob-num js-line-number" data-line-number="139"></td>
        <td id="LC139" class="blob-code blob-code-inner js-file-line">                  &amp;<span class="pl-k">or</span> [[&amp;<span class="pl-k">or</span> <span class="pl-s"><span class="pl-pds">&quot;</span>:test<span class="pl-pds">&quot;</span></span> <span class="pl-s"><span class="pl-pds">&quot;</span>:test-not<span class="pl-pds">&quot;</span></span> <span class="pl-s"><span class="pl-pds">&quot;</span>:key<span class="pl-pds">&quot;</span></span>] function-form]</td>
      </tr>
      <tr>
        <td id="L140" class="blob-num js-line-number" data-line-number="140"></td>
        <td id="LC140" class="blob-code blob-code-inner js-file-line">                  [keywordp form])))</td>
      </tr>
      <tr>
        <td id="L141" class="blob-num js-line-number" data-line-number="141"></td>
        <td id="LC141" class="blob-code blob-code-inner js-file-line">  (<span class="pl-k">if</span> (symbolp place)</td>
      </tr>
      <tr>
        <td id="L142" class="blob-num js-line-number" data-line-number="142"></td>
        <td id="LC142" class="blob-code blob-code-inner js-file-line">      (<span class="pl-k">if</span> (<span class="pl-c1">null</span> keys)</td>
      </tr>
      <tr>
        <td id="L143" class="blob-num js-line-number" data-line-number="143"></td>
        <td id="LC143" class="blob-code blob-code-inner js-file-line">          (macroexp-let2 <span class="pl-c1">nil</span> var x</td>
      </tr>
      <tr>
        <td id="L144" class="blob-num js-line-number" data-line-number="144"></td>
        <td id="LC144" class="blob-code blob-code-inner js-file-line">            `(<span class="pl-k">if</span> (memql ,var ,place)</td>
      </tr>
      <tr>
        <td id="L145" class="blob-num js-line-number" data-line-number="145"></td>
        <td id="LC145" class="blob-code blob-code-inner js-file-line">                 <span class="pl-c">;; This symbol may later on expand to actual code which then</span></td>
      </tr>
      <tr>
        <td id="L146" class="blob-num js-line-number" data-line-number="146"></td>
        <td id="LC146" class="blob-code blob-code-inner js-file-line">                 <span class="pl-c">;; trigger warnings like &quot;value unused&quot; since cl-pushnew&#39;s</span></td>
      </tr>
      <tr>
        <td id="L147" class="blob-num js-line-number" data-line-number="147"></td>
        <td id="LC147" class="blob-code blob-code-inner js-file-line">                 <span class="pl-c">;; return value is rarely used.  It should not matter that</span></td>
      </tr>
      <tr>
        <td id="L148" class="blob-num js-line-number" data-line-number="148"></td>
        <td id="LC148" class="blob-code blob-code-inner js-file-line">                 <span class="pl-c">;; other warnings may be silenced, since `place&#39; is used</span></td>
      </tr>
      <tr>
        <td id="L149" class="blob-num js-line-number" data-line-number="149"></td>
        <td id="LC149" class="blob-code blob-code-inner js-file-line">                 <span class="pl-c">;; earlier and should have triggered them already.</span></td>
      </tr>
      <tr>
        <td id="L150" class="blob-num js-line-number" data-line-number="150"></td>
        <td id="LC150" class="blob-code blob-code-inner js-file-line">                 (with-no-warnings ,place)</td>
      </tr>
      <tr>
        <td id="L151" class="blob-num js-line-number" data-line-number="151"></td>
        <td id="LC151" class="blob-code blob-code-inner js-file-line">               (<span class="pl-c1">setq</span> ,place (<span class="pl-c1">cons</span> ,var ,place))))</td>
      </tr>
      <tr>
        <td id="L152" class="blob-num js-line-number" data-line-number="152"></td>
        <td id="LC152" class="blob-code blob-code-inner js-file-line">	`(<span class="pl-c1">setq</span> ,place (cl-adjoin ,x ,place ,@keys)))</td>
      </tr>
      <tr>
        <td id="L153" class="blob-num js-line-number" data-line-number="153"></td>
        <td id="LC153" class="blob-code blob-code-inner js-file-line">    `(cl-callf2 cl-adjoin ,x ,place ,@keys)))</td>
      </tr>
      <tr>
        <td id="L154" class="blob-num js-line-number" data-line-number="154"></td>
        <td id="LC154" class="blob-code blob-code-inner js-file-line">
</td>
      </tr>
      <tr>
        <td id="L155" class="blob-num js-line-number" data-line-number="155"></td>
        <td id="LC155" class="blob-code blob-code-inner js-file-line">(<span class="pl-k">defun</span> <span class="pl-en">cl--set-buffer-substring</span> (start end val)</td>
      </tr>
      <tr>
        <td id="L156" class="blob-num js-line-number" data-line-number="156"></td>
        <td id="LC156" class="blob-code blob-code-inner js-file-line">  (save-excursion (delete-region start end)</td>
      </tr>
      <tr>
        <td id="L157" class="blob-num js-line-number" data-line-number="157"></td>
        <td id="LC157" class="blob-code blob-code-inner js-file-line">		  (goto-char start)</td>
      </tr>
      <tr>
        <td id="L158" class="blob-num js-line-number" data-line-number="158"></td>
        <td id="LC158" class="blob-code blob-code-inner js-file-line">		  (insert val)</td>
      </tr>
      <tr>
        <td id="L159" class="blob-num js-line-number" data-line-number="159"></td>
        <td id="LC159" class="blob-code blob-code-inner js-file-line">		  val))</td>
      </tr>
      <tr>
        <td id="L160" class="blob-num js-line-number" data-line-number="160"></td>
        <td id="LC160" class="blob-code blob-code-inner js-file-line">
</td>
      </tr>
      <tr>
        <td id="L161" class="blob-num js-line-number" data-line-number="161"></td>
        <td id="LC161" class="blob-code blob-code-inner js-file-line">(<span class="pl-k">defun</span> <span class="pl-en">cl--set-substring</span> (str start end val)</td>
      </tr>
      <tr>
        <td id="L162" class="blob-num js-line-number" data-line-number="162"></td>
        <td id="LC162" class="blob-code blob-code-inner js-file-line">  (<span class="pl-k">if</span> end (<span class="pl-k">if</span> (&lt; end <span class="pl-c1">0</span>) (cl-incf end (length str)))</td>
      </tr>
      <tr>
        <td id="L163" class="blob-num js-line-number" data-line-number="163"></td>
        <td id="LC163" class="blob-code blob-code-inner js-file-line">    (<span class="pl-c1">setq</span> end (length str)))</td>
      </tr>
      <tr>
        <td id="L164" class="blob-num js-line-number" data-line-number="164"></td>
        <td id="LC164" class="blob-code blob-code-inner js-file-line">  (<span class="pl-k">if</span> (&lt; start <span class="pl-c1">0</span>) (cl-incf start (length str)))</td>
      </tr>
      <tr>
        <td id="L165" class="blob-num js-line-number" data-line-number="165"></td>
        <td id="LC165" class="blob-code blob-code-inner js-file-line">  (concat (<span class="pl-k">and</span> (&gt; start <span class="pl-c1">0</span>) (substring str <span class="pl-c1">0</span> start))</td>
      </tr>
      <tr>
        <td id="L166" class="blob-num js-line-number" data-line-number="166"></td>
        <td id="LC166" class="blob-code blob-code-inner js-file-line">	  val</td>
      </tr>
      <tr>
        <td id="L167" class="blob-num js-line-number" data-line-number="167"></td>
        <td id="LC167" class="blob-code blob-code-inner js-file-line">	  (<span class="pl-k">and</span> (&lt; end (length str)) (substring str end))))</td>
      </tr>
      <tr>
        <td id="L168" class="blob-num js-line-number" data-line-number="168"></td>
        <td id="LC168" class="blob-code blob-code-inner js-file-line">
</td>
      </tr>
      <tr>
        <td id="L169" class="blob-num js-line-number" data-line-number="169"></td>
        <td id="LC169" class="blob-code blob-code-inner js-file-line">
</td>
      </tr>
      <tr>
        <td id="L170" class="blob-num js-line-number" data-line-number="170"></td>
        <td id="LC170" class="blob-code blob-code-inner js-file-line"><span class="pl-c">;;; Blocks and exits.</span></td>
      </tr>
      <tr>
        <td id="L171" class="blob-num js-line-number" data-line-number="171"></td>
        <td id="LC171" class="blob-code blob-code-inner js-file-line">
</td>
      </tr>
      <tr>
        <td id="L172" class="blob-num js-line-number" data-line-number="172"></td>
        <td id="LC172" class="blob-code blob-code-inner js-file-line">(defalias &#39;cl--block-wrapper &#39;identity)</td>
      </tr>
      <tr>
        <td id="L173" class="blob-num js-line-number" data-line-number="173"></td>
        <td id="LC173" class="blob-code blob-code-inner js-file-line">(defalias &#39;cl--block-throw &#39;throw)</td>
      </tr>
      <tr>
        <td id="L174" class="blob-num js-line-number" data-line-number="174"></td>
        <td id="LC174" class="blob-code blob-code-inner js-file-line">
</td>
      </tr>
      <tr>
        <td id="L175" class="blob-num js-line-number" data-line-number="175"></td>
        <td id="LC175" class="blob-code blob-code-inner js-file-line">
</td>
      </tr>
      <tr>
        <td id="L176" class="blob-num js-line-number" data-line-number="176"></td>
        <td id="LC176" class="blob-code blob-code-inner js-file-line"><span class="pl-c">;;; Multiple values.</span></td>
      </tr>
      <tr>
        <td id="L177" class="blob-num js-line-number" data-line-number="177"></td>
        <td id="LC177" class="blob-code blob-code-inner js-file-line"><span class="pl-c">;; True multiple values are not supported, or even</span></td>
      </tr>
      <tr>
        <td id="L178" class="blob-num js-line-number" data-line-number="178"></td>
        <td id="LC178" class="blob-code blob-code-inner js-file-line"><span class="pl-c">;; simulated.  Instead, cl-multiple-value-bind and friends simply expect</span></td>
      </tr>
      <tr>
        <td id="L179" class="blob-num js-line-number" data-line-number="179"></td>
        <td id="LC179" class="blob-code blob-code-inner js-file-line"><span class="pl-c">;; the target form to return the values as a list.</span></td>
      </tr>
      <tr>
        <td id="L180" class="blob-num js-line-number" data-line-number="180"></td>
        <td id="LC180" class="blob-code blob-code-inner js-file-line">
</td>
      </tr>
      <tr>
        <td id="L181" class="blob-num js-line-number" data-line-number="181"></td>
        <td id="LC181" class="blob-code blob-code-inner js-file-line">(<span class="pl-k">defun</span> <span class="pl-en">cl--defalias</span> (cl-f el-f &amp;optional doc)</td>
      </tr>
      <tr>
        <td id="L182" class="blob-num js-line-number" data-line-number="182"></td>
        <td id="LC182" class="blob-code blob-code-inner js-file-line">  (defalias cl-f el-f doc)</td>
      </tr>
      <tr>
        <td id="L183" class="blob-num js-line-number" data-line-number="183"></td>
        <td id="LC183" class="blob-code blob-code-inner js-file-line">  (put cl-f &#39;byte-optimizer &#39;byte-compile-inline-expand))</td>
      </tr>
      <tr>
        <td id="L184" class="blob-num js-line-number" data-line-number="184"></td>
        <td id="LC184" class="blob-code blob-code-inner js-file-line">
</td>
      </tr>
      <tr>
        <td id="L185" class="blob-num js-line-number" data-line-number="185"></td>
        <td id="LC185" class="blob-code blob-code-inner js-file-line">(cl--defalias &#39;cl-values <span class="pl-c1">#&#39;list</span></td>
      </tr>
      <tr>
        <td id="L186" class="blob-num js-line-number" data-line-number="186"></td>
        <td id="LC186" class="blob-code blob-code-inner js-file-line">  <span class="pl-s"><span class="pl-pds">&quot;</span>Return multiple values, Common Lisp style.</span></td>
      </tr>
      <tr>
        <td id="L187" class="blob-num js-line-number" data-line-number="187"></td>
        <td id="LC187" class="blob-code blob-code-inner js-file-line"><span class="pl-s">The arguments of `cl-values&#39; are the values</span></td>
      </tr>
      <tr>
        <td id="L188" class="blob-num js-line-number" data-line-number="188"></td>
        <td id="LC188" class="blob-code blob-code-inner js-file-line"><span class="pl-s">that the containing function should return.</span></td>
      </tr>
      <tr>
        <td id="L189" class="blob-num js-line-number" data-line-number="189"></td>
        <td id="LC189" class="blob-code blob-code-inner js-file-line"><span class="pl-s"></span></td>
      </tr>
      <tr>
        <td id="L190" class="blob-num js-line-number" data-line-number="190"></td>
        <td id="LC190" class="blob-code blob-code-inner js-file-line"><span class="pl-s"><span class="pl-cce">\(</span>fn &amp;rest VALUES)<span class="pl-pds">&quot;</span></span>)</td>
      </tr>
      <tr>
        <td id="L191" class="blob-num js-line-number" data-line-number="191"></td>
        <td id="LC191" class="blob-code blob-code-inner js-file-line">
</td>
      </tr>
      <tr>
        <td id="L192" class="blob-num js-line-number" data-line-number="192"></td>
        <td id="LC192" class="blob-code blob-code-inner js-file-line">(cl--defalias &#39;cl-values-list <span class="pl-c1">#&#39;identity</span></td>
      </tr>
      <tr>
        <td id="L193" class="blob-num js-line-number" data-line-number="193"></td>
        <td id="LC193" class="blob-code blob-code-inner js-file-line">  <span class="pl-s"><span class="pl-pds">&quot;</span>Return multiple values, Common Lisp style, taken from a list.</span></td>
      </tr>
      <tr>
        <td id="L194" class="blob-num js-line-number" data-line-number="194"></td>
        <td id="LC194" class="blob-code blob-code-inner js-file-line"><span class="pl-s">LIST specifies the list of values</span></td>
      </tr>
      <tr>
        <td id="L195" class="blob-num js-line-number" data-line-number="195"></td>
        <td id="LC195" class="blob-code blob-code-inner js-file-line"><span class="pl-s">that the containing function should return.</span></td>
      </tr>
      <tr>
        <td id="L196" class="blob-num js-line-number" data-line-number="196"></td>
        <td id="LC196" class="blob-code blob-code-inner js-file-line"><span class="pl-s"></span></td>
      </tr>
      <tr>
        <td id="L197" class="blob-num js-line-number" data-line-number="197"></td>
        <td id="LC197" class="blob-code blob-code-inner js-file-line"><span class="pl-s"><span class="pl-cce">\(</span>fn LIST)<span class="pl-pds">&quot;</span></span>)</td>
      </tr>
      <tr>
        <td id="L198" class="blob-num js-line-number" data-line-number="198"></td>
        <td id="LC198" class="blob-code blob-code-inner js-file-line">
</td>
      </tr>
      <tr>
        <td id="L199" class="blob-num js-line-number" data-line-number="199"></td>
        <td id="LC199" class="blob-code blob-code-inner js-file-line">(defsubst cl-multiple-value-list (expression)</td>
      </tr>
      <tr>
        <td id="L200" class="blob-num js-line-number" data-line-number="200"></td>
        <td id="LC200" class="blob-code blob-code-inner js-file-line">  <span class="pl-s"><span class="pl-pds">&quot;</span>Return a list of the multiple values produced by EXPRESSION.</span></td>
      </tr>
      <tr>
        <td id="L201" class="blob-num js-line-number" data-line-number="201"></td>
        <td id="LC201" class="blob-code blob-code-inner js-file-line"><span class="pl-s">This handles multiple values in Common Lisp style, but it does not</span></td>
      </tr>
      <tr>
        <td id="L202" class="blob-num js-line-number" data-line-number="202"></td>
        <td id="LC202" class="blob-code blob-code-inner js-file-line"><span class="pl-s">work right when EXPRESSION calls an ordinary Emacs Lisp function</span></td>
      </tr>
      <tr>
        <td id="L203" class="blob-num js-line-number" data-line-number="203"></td>
        <td id="LC203" class="blob-code blob-code-inner js-file-line"><span class="pl-s">that returns just one value.<span class="pl-pds">&quot;</span></span></td>
      </tr>
      <tr>
        <td id="L204" class="blob-num js-line-number" data-line-number="204"></td>
        <td id="LC204" class="blob-code blob-code-inner js-file-line">  expression)</td>
      </tr>
      <tr>
        <td id="L205" class="blob-num js-line-number" data-line-number="205"></td>
        <td id="LC205" class="blob-code blob-code-inner js-file-line">
</td>
      </tr>
      <tr>
        <td id="L206" class="blob-num js-line-number" data-line-number="206"></td>
        <td id="LC206" class="blob-code blob-code-inner js-file-line">(defsubst cl-multiple-value-apply (function expression)</td>
      </tr>
      <tr>
        <td id="L207" class="blob-num js-line-number" data-line-number="207"></td>
        <td id="LC207" class="blob-code blob-code-inner js-file-line">  <span class="pl-s"><span class="pl-pds">&quot;</span>Evaluate EXPRESSION to get multiple values and apply FUNCTION to them.</span></td>
      </tr>
      <tr>
        <td id="L208" class="blob-num js-line-number" data-line-number="208"></td>
        <td id="LC208" class="blob-code blob-code-inner js-file-line"><span class="pl-s">This handles multiple values in Common Lisp style, but it does not work</span></td>
      </tr>
      <tr>
        <td id="L209" class="blob-num js-line-number" data-line-number="209"></td>
        <td id="LC209" class="blob-code blob-code-inner js-file-line"><span class="pl-s">right when EXPRESSION calls an ordinary Emacs Lisp function that returns just</span></td>
      </tr>
      <tr>
        <td id="L210" class="blob-num js-line-number" data-line-number="210"></td>
        <td id="LC210" class="blob-code blob-code-inner js-file-line"><span class="pl-s">one value.<span class="pl-pds">&quot;</span></span></td>
      </tr>
      <tr>
        <td id="L211" class="blob-num js-line-number" data-line-number="211"></td>
        <td id="LC211" class="blob-code blob-code-inner js-file-line">  (apply function expression))</td>
      </tr>
      <tr>
        <td id="L212" class="blob-num js-line-number" data-line-number="212"></td>
        <td id="LC212" class="blob-code blob-code-inner js-file-line">
</td>
      </tr>
      <tr>
        <td id="L213" class="blob-num js-line-number" data-line-number="213"></td>
        <td id="LC213" class="blob-code blob-code-inner js-file-line">(defalias &#39;cl-multiple-value-call &#39;apply</td>
      </tr>
      <tr>
        <td id="L214" class="blob-num js-line-number" data-line-number="214"></td>
        <td id="LC214" class="blob-code blob-code-inner js-file-line">  <span class="pl-s"><span class="pl-pds">&quot;</span>Apply FUNCTION to ARGUMENTS, taking multiple values into account.</span></td>
      </tr>
      <tr>
        <td id="L215" class="blob-num js-line-number" data-line-number="215"></td>
        <td id="LC215" class="blob-code blob-code-inner js-file-line"><span class="pl-s">This implementation only handles the case where there is only one argument.<span class="pl-pds">&quot;</span></span>)</td>
      </tr>
      <tr>
        <td id="L216" class="blob-num js-line-number" data-line-number="216"></td>
        <td id="LC216" class="blob-code blob-code-inner js-file-line">
</td>
      </tr>
      <tr>
        <td id="L217" class="blob-num js-line-number" data-line-number="217"></td>
        <td id="LC217" class="blob-code blob-code-inner js-file-line">(cl--defalias &#39;cl-nth-value <span class="pl-c1">#&#39;nth</span></td>
      </tr>
      <tr>
        <td id="L218" class="blob-num js-line-number" data-line-number="218"></td>
        <td id="LC218" class="blob-code blob-code-inner js-file-line">  <span class="pl-s"><span class="pl-pds">&quot;</span>Evaluate EXPRESSION to get multiple values and return the Nth one.</span></td>
      </tr>
      <tr>
        <td id="L219" class="blob-num js-line-number" data-line-number="219"></td>
        <td id="LC219" class="blob-code blob-code-inner js-file-line"><span class="pl-s">This handles multiple values in Common Lisp style, but it does not work</span></td>
      </tr>
      <tr>
        <td id="L220" class="blob-num js-line-number" data-line-number="220"></td>
        <td id="LC220" class="blob-code blob-code-inner js-file-line"><span class="pl-s">right when EXPRESSION calls an ordinary Emacs Lisp function that returns just</span></td>
      </tr>
      <tr>
        <td id="L221" class="blob-num js-line-number" data-line-number="221"></td>
        <td id="LC221" class="blob-code blob-code-inner js-file-line"><span class="pl-s">one value.</span></td>
      </tr>
      <tr>
        <td id="L222" class="blob-num js-line-number" data-line-number="222"></td>
        <td id="LC222" class="blob-code blob-code-inner js-file-line"><span class="pl-s"></span></td>
      </tr>
      <tr>
        <td id="L223" class="blob-num js-line-number" data-line-number="223"></td>
        <td id="LC223" class="blob-code blob-code-inner js-file-line"><span class="pl-s"><span class="pl-cce">\(</span>fn N EXPRESSION)<span class="pl-pds">&quot;</span></span>)</td>
      </tr>
      <tr>
        <td id="L224" class="blob-num js-line-number" data-line-number="224"></td>
        <td id="LC224" class="blob-code blob-code-inner js-file-line">
</td>
      </tr>
      <tr>
        <td id="L225" class="blob-num js-line-number" data-line-number="225"></td>
        <td id="LC225" class="blob-code blob-code-inner js-file-line"><span class="pl-c">;;; Declarations.</span></td>
      </tr>
      <tr>
        <td id="L226" class="blob-num js-line-number" data-line-number="226"></td>
        <td id="LC226" class="blob-code blob-code-inner js-file-line">
</td>
      </tr>
      <tr>
        <td id="L227" class="blob-num js-line-number" data-line-number="227"></td>
        <td id="LC227" class="blob-code blob-code-inner js-file-line">(defvar cl--compiling-file <span class="pl-c1">nil</span>)</td>
      </tr>
      <tr>
        <td id="L228" class="blob-num js-line-number" data-line-number="228"></td>
        <td id="LC228" class="blob-code blob-code-inner js-file-line">(<span class="pl-k">defun</span> <span class="pl-en">cl--compiling-file</span> ()</td>
      </tr>
      <tr>
        <td id="L229" class="blob-num js-line-number" data-line-number="229"></td>
        <td id="LC229" class="blob-code blob-code-inner js-file-line">  (<span class="pl-k">or</span> cl--compiling-file</td>
      </tr>
      <tr>
        <td id="L230" class="blob-num js-line-number" data-line-number="230"></td>
        <td id="LC230" class="blob-code blob-code-inner js-file-line">      (<span class="pl-k">and</span> (boundp &#39;byte-compile--outbuffer)</td>
      </tr>
      <tr>
        <td id="L231" class="blob-num js-line-number" data-line-number="231"></td>
        <td id="LC231" class="blob-code blob-code-inner js-file-line">           (bufferp (symbol-value &#39;byte-compile--outbuffer))</td>
      </tr>
      <tr>
        <td id="L232" class="blob-num js-line-number" data-line-number="232"></td>
        <td id="LC232" class="blob-code blob-code-inner js-file-line">	   (equal (buffer-name (symbol-value &#39;byte-compile--outbuffer))</td>
      </tr>
      <tr>
        <td id="L233" class="blob-num js-line-number" data-line-number="233"></td>
        <td id="LC233" class="blob-code blob-code-inner js-file-line">		  <span class="pl-s"><span class="pl-pds">&quot;</span> *Compiler Output*<span class="pl-pds">&quot;</span></span>))))</td>
      </tr>
      <tr>
        <td id="L234" class="blob-num js-line-number" data-line-number="234"></td>
        <td id="LC234" class="blob-code blob-code-inner js-file-line">
</td>
      </tr>
      <tr>
        <td id="L235" class="blob-num js-line-number" data-line-number="235"></td>
        <td id="LC235" class="blob-code blob-code-inner js-file-line">(defvar cl--proclaims-deferred <span class="pl-c1">nil</span>)</td>
      </tr>
      <tr>
        <td id="L236" class="blob-num js-line-number" data-line-number="236"></td>
        <td id="LC236" class="blob-code blob-code-inner js-file-line">
</td>
      </tr>
      <tr>
        <td id="L237" class="blob-num js-line-number" data-line-number="237"></td>
        <td id="LC237" class="blob-code blob-code-inner js-file-line">(<span class="pl-k">defun</span> <span class="pl-en">cl-proclaim</span> (spec)</td>
      </tr>
      <tr>
        <td id="L238" class="blob-num js-line-number" data-line-number="238"></td>
        <td id="LC238" class="blob-code blob-code-inner js-file-line">  <span class="pl-s"><span class="pl-pds">&quot;</span>Record a global declaration specified by SPEC.<span class="pl-pds">&quot;</span></span></td>
      </tr>
      <tr>
        <td id="L239" class="blob-num js-line-number" data-line-number="239"></td>
        <td id="LC239" class="blob-code blob-code-inner js-file-line">  (<span class="pl-k">if</span> (fboundp &#39;cl--<span class="pl-k">do</span>-proclaim) (cl--<span class="pl-k">do</span>-proclaim spec <span class="pl-c1">t</span>)</td>
      </tr>
      <tr>
        <td id="L240" class="blob-num js-line-number" data-line-number="240"></td>
        <td id="LC240" class="blob-code blob-code-inner js-file-line">    (push spec cl--proclaims-deferred))</td>
      </tr>
      <tr>
        <td id="L241" class="blob-num js-line-number" data-line-number="241"></td>
        <td id="LC241" class="blob-code blob-code-inner js-file-line">  <span class="pl-c1">nil</span>)</td>
      </tr>
      <tr>
        <td id="L242" class="blob-num js-line-number" data-line-number="242"></td>
        <td id="LC242" class="blob-code blob-code-inner js-file-line">
</td>
      </tr>
      <tr>
        <td id="L243" class="blob-num js-line-number" data-line-number="243"></td>
        <td id="LC243" class="blob-code blob-code-inner js-file-line">(<span class="pl-k">defmacro</span> <span class="pl-en">cl-declaim</span> (&amp;rest specs)</td>
      </tr>
      <tr>
        <td id="L244" class="blob-num js-line-number" data-line-number="244"></td>
        <td id="LC244" class="blob-code blob-code-inner js-file-line">  <span class="pl-s"><span class="pl-pds">&quot;</span>Like `cl-proclaim&#39;, but takes any number of unevaluated, unquoted arguments.</span></td>
      </tr>
      <tr>
        <td id="L245" class="blob-num js-line-number" data-line-number="245"></td>
        <td id="LC245" class="blob-code blob-code-inner js-file-line"><span class="pl-s">Puts `(cl-eval-when (compile load eval) ...)&#39; around the declarations</span></td>
      </tr>
      <tr>
        <td id="L246" class="blob-num js-line-number" data-line-number="246"></td>
        <td id="LC246" class="blob-code blob-code-inner js-file-line"><span class="pl-s">so that they are registered at compile-time as well as run-time.<span class="pl-pds">&quot;</span></span></td>
      </tr>
      <tr>
        <td id="L247" class="blob-num js-line-number" data-line-number="247"></td>
        <td id="LC247" class="blob-code blob-code-inner js-file-line">  (<span class="pl-k">let</span> ((body (mapcar (<span class="pl-c1">lambda</span> (x) `(cl-proclaim &#39;,x)) specs)))</td>
      </tr>
      <tr>
        <td id="L248" class="blob-num js-line-number" data-line-number="248"></td>
        <td id="LC248" class="blob-code blob-code-inner js-file-line">    (<span class="pl-k">if</span> (cl--compiling-file) `(cl-eval-<span class="pl-k">when</span> (compile <span class="pl-c1">load</span> <span class="pl-c1">eval</span>) ,@body)</td>
      </tr>
      <tr>
        <td id="L249" class="blob-num js-line-number" data-line-number="249"></td>
        <td id="LC249" class="blob-code blob-code-inner js-file-line">      `(<span class="pl-c1">progn</span> ,@body))))           <span class="pl-c">; Avoid loading cl-macs.el for cl-eval-when.</span></td>
      </tr>
      <tr>
        <td id="L250" class="blob-num js-line-number" data-line-number="250"></td>
        <td id="LC250" class="blob-code blob-code-inner js-file-line">
</td>
      </tr>
      <tr>
        <td id="L251" class="blob-num js-line-number" data-line-number="251"></td>
        <td id="LC251" class="blob-code blob-code-inner js-file-line">
</td>
      </tr>
      <tr>
        <td id="L252" class="blob-num js-line-number" data-line-number="252"></td>
        <td id="LC252" class="blob-code blob-code-inner js-file-line"><span class="pl-c">;;; Symbols.</span></td>
      </tr>
      <tr>
        <td id="L253" class="blob-num js-line-number" data-line-number="253"></td>
        <td id="LC253" class="blob-code blob-code-inner js-file-line">
</td>
      </tr>
      <tr>
        <td id="L254" class="blob-num js-line-number" data-line-number="254"></td>
        <td id="LC254" class="blob-code blob-code-inner js-file-line">(<span class="pl-k">defun</span> <span class="pl-en">cl--random-time</span> ()</td>
      </tr>
      <tr>
        <td id="L255" class="blob-num js-line-number" data-line-number="255"></td>
        <td id="LC255" class="blob-code blob-code-inner js-file-line">  (<span class="pl-k">let</span>* ((time (copy-sequence (current-time-string))) (i (length time)) (v <span class="pl-c1">0</span>))</td>
      </tr>
      <tr>
        <td id="L256" class="blob-num js-line-number" data-line-number="256"></td>
        <td id="LC256" class="blob-code blob-code-inner js-file-line">    (while (&gt;= (cl-decf i) <span class="pl-c1">0</span>) (<span class="pl-c1">setq</span> v (+ (* v <span class="pl-c1">3</span>) (aref time i))))</td>
      </tr>
      <tr>
        <td id="L257" class="blob-num js-line-number" data-line-number="257"></td>
        <td id="LC257" class="blob-code blob-code-inner js-file-line">    v))</td>
      </tr>
      <tr>
        <td id="L258" class="blob-num js-line-number" data-line-number="258"></td>
        <td id="LC258" class="blob-code blob-code-inner js-file-line">
</td>
      </tr>
      <tr>
        <td id="L259" class="blob-num js-line-number" data-line-number="259"></td>
        <td id="LC259" class="blob-code blob-code-inner js-file-line">(defvar cl--gensym-counter (* (logand (cl--random-time) <span class="pl-c1">1023</span>) <span class="pl-c1">100</span>))</td>
      </tr>
      <tr>
        <td id="L260" class="blob-num js-line-number" data-line-number="260"></td>
        <td id="LC260" class="blob-code blob-code-inner js-file-line">
</td>
      </tr>
      <tr>
        <td id="L261" class="blob-num js-line-number" data-line-number="261"></td>
        <td id="LC261" class="blob-code blob-code-inner js-file-line">
</td>
      </tr>
      <tr>
        <td id="L262" class="blob-num js-line-number" data-line-number="262"></td>
        <td id="LC262" class="blob-code blob-code-inner js-file-line"><span class="pl-c">;;; Numbers.</span></td>
      </tr>
      <tr>
        <td id="L263" class="blob-num js-line-number" data-line-number="263"></td>
        <td id="LC263" class="blob-code blob-code-inner js-file-line">
</td>
      </tr>
      <tr>
        <td id="L264" class="blob-num js-line-number" data-line-number="264"></td>
        <td id="LC264" class="blob-code blob-code-inner js-file-line">(define-obsolete-function-alias &#39;cl-floatp-safe &#39;floatp <span class="pl-s"><span class="pl-pds">&quot;</span>24.4<span class="pl-pds">&quot;</span></span>)</td>
      </tr>
      <tr>
        <td id="L265" class="blob-num js-line-number" data-line-number="265"></td>
        <td id="LC265" class="blob-code blob-code-inner js-file-line">
</td>
      </tr>
      <tr>
        <td id="L266" class="blob-num js-line-number" data-line-number="266"></td>
        <td id="LC266" class="blob-code blob-code-inner js-file-line">(defsubst cl-plusp (number)</td>
      </tr>
      <tr>
        <td id="L267" class="blob-num js-line-number" data-line-number="267"></td>
        <td id="LC267" class="blob-code blob-code-inner js-file-line">  <span class="pl-s"><span class="pl-pds">&quot;</span>Return t if NUMBER is positive.<span class="pl-pds">&quot;</span></span></td>
      </tr>
      <tr>
        <td id="L268" class="blob-num js-line-number" data-line-number="268"></td>
        <td id="LC268" class="blob-code blob-code-inner js-file-line">  (&gt; number <span class="pl-c1">0</span>))</td>
      </tr>
      <tr>
        <td id="L269" class="blob-num js-line-number" data-line-number="269"></td>
        <td id="LC269" class="blob-code blob-code-inner js-file-line">
</td>
      </tr>
      <tr>
        <td id="L270" class="blob-num js-line-number" data-line-number="270"></td>
        <td id="LC270" class="blob-code blob-code-inner js-file-line">(defsubst cl-minusp (number)</td>
      </tr>
      <tr>
        <td id="L271" class="blob-num js-line-number" data-line-number="271"></td>
        <td id="LC271" class="blob-code blob-code-inner js-file-line">  <span class="pl-s"><span class="pl-pds">&quot;</span>Return t if NUMBER is negative.<span class="pl-pds">&quot;</span></span></td>
      </tr>
      <tr>
        <td id="L272" class="blob-num js-line-number" data-line-number="272"></td>
        <td id="LC272" class="blob-code blob-code-inner js-file-line">  (&lt; number <span class="pl-c1">0</span>))</td>
      </tr>
      <tr>
        <td id="L273" class="blob-num js-line-number" data-line-number="273"></td>
        <td id="LC273" class="blob-code blob-code-inner js-file-line">
</td>
      </tr>
      <tr>
        <td id="L274" class="blob-num js-line-number" data-line-number="274"></td>
        <td id="LC274" class="blob-code blob-code-inner js-file-line">(<span class="pl-k">defun</span> <span class="pl-en">cl-oddp</span> (integer)</td>
      </tr>
      <tr>
        <td id="L275" class="blob-num js-line-number" data-line-number="275"></td>
        <td id="LC275" class="blob-code blob-code-inner js-file-line">  <span class="pl-s"><span class="pl-pds">&quot;</span>Return t if INTEGER is odd.<span class="pl-pds">&quot;</span></span></td>
      </tr>
      <tr>
        <td id="L276" class="blob-num js-line-number" data-line-number="276"></td>
        <td id="LC276" class="blob-code blob-code-inner js-file-line">  (<span class="pl-k">eq</span> (logand integer <span class="pl-c1">1</span>) <span class="pl-c1">1</span>))</td>
      </tr>
      <tr>
        <td id="L277" class="blob-num js-line-number" data-line-number="277"></td>
        <td id="LC277" class="blob-code blob-code-inner js-file-line">
</td>
      </tr>
      <tr>
        <td id="L278" class="blob-num js-line-number" data-line-number="278"></td>
        <td id="LC278" class="blob-code blob-code-inner js-file-line">(<span class="pl-k">defun</span> <span class="pl-en">cl-evenp</span> (integer)</td>
      </tr>
      <tr>
        <td id="L279" class="blob-num js-line-number" data-line-number="279"></td>
        <td id="LC279" class="blob-code blob-code-inner js-file-line">  <span class="pl-s"><span class="pl-pds">&quot;</span>Return t if INTEGER is even.<span class="pl-pds">&quot;</span></span></td>
      </tr>
      <tr>
        <td id="L280" class="blob-num js-line-number" data-line-number="280"></td>
        <td id="LC280" class="blob-code blob-code-inner js-file-line">  (<span class="pl-k">eq</span> (logand integer <span class="pl-c1">1</span>) <span class="pl-c1">0</span>))</td>
      </tr>
      <tr>
        <td id="L281" class="blob-num js-line-number" data-line-number="281"></td>
        <td id="LC281" class="blob-code blob-code-inner js-file-line">
</td>
      </tr>
      <tr>
        <td id="L282" class="blob-num js-line-number" data-line-number="282"></td>
        <td id="LC282" class="blob-code blob-code-inner js-file-line">(defconst cl-digit-char-table</td>
      </tr>
      <tr>
        <td id="L283" class="blob-num js-line-number" data-line-number="283"></td>
        <td id="LC283" class="blob-code blob-code-inner js-file-line">  (<span class="pl-k">let</span>* ((digits (make-vector <span class="pl-c1">256</span> <span class="pl-c1">nil</span>))</td>
      </tr>
      <tr>
        <td id="L284" class="blob-num js-line-number" data-line-number="284"></td>
        <td id="LC284" class="blob-code blob-code-inner js-file-line">         (populate (<span class="pl-c1">lambda</span> (start end base)</td>
      </tr>
      <tr>
        <td id="L285" class="blob-num js-line-number" data-line-number="285"></td>
        <td id="LC285" class="blob-code blob-code-inner js-file-line">                     (mapc (<span class="pl-c1">lambda</span> (i)</td>
      </tr>
      <tr>
        <td id="L286" class="blob-num js-line-number" data-line-number="286"></td>
        <td id="LC286" class="blob-code blob-code-inner js-file-line">                             (aset digits i (+ base (- i start))))</td>
      </tr>
      <tr>
        <td id="L287" class="blob-num js-line-number" data-line-number="287"></td>
        <td id="LC287" class="blob-code blob-code-inner js-file-line">                           (number-sequence start end)))))</td>
      </tr>
      <tr>
        <td id="L288" class="blob-num js-line-number" data-line-number="288"></td>
        <td id="LC288" class="blob-code blob-code-inner js-file-line">    (funcall populate <span class="pl-c1">?0</span> <span class="pl-c1">?9</span> <span class="pl-c1">0</span>)</td>
      </tr>
      <tr>
        <td id="L289" class="blob-num js-line-number" data-line-number="289"></td>
        <td id="LC289" class="blob-code blob-code-inner js-file-line">    (funcall populate <span class="pl-c1">?A</span> <span class="pl-c1">?Z</span> <span class="pl-c1">10</span>)</td>
      </tr>
      <tr>
        <td id="L290" class="blob-num js-line-number" data-line-number="290"></td>
        <td id="LC290" class="blob-code blob-code-inner js-file-line">    (funcall populate <span class="pl-c1">?a</span> <span class="pl-c1">?z</span> <span class="pl-c1">10</span>)</td>
      </tr>
      <tr>
        <td id="L291" class="blob-num js-line-number" data-line-number="291"></td>
        <td id="LC291" class="blob-code blob-code-inner js-file-line">    digits))</td>
      </tr>
      <tr>
        <td id="L292" class="blob-num js-line-number" data-line-number="292"></td>
        <td id="LC292" class="blob-code blob-code-inner js-file-line">
</td>
      </tr>
      <tr>
        <td id="L293" class="blob-num js-line-number" data-line-number="293"></td>
        <td id="LC293" class="blob-code blob-code-inner js-file-line">(<span class="pl-k">defun</span> <span class="pl-en">cl-digit-char-p</span> (char &amp;optional radix)</td>
      </tr>
      <tr>
        <td id="L294" class="blob-num js-line-number" data-line-number="294"></td>
        <td id="LC294" class="blob-code blob-code-inner js-file-line">  <span class="pl-s"><span class="pl-pds">&quot;</span>Test if CHAR is a digit in the specified RADIX (default 10).</span></td>
      </tr>
      <tr>
        <td id="L295" class="blob-num js-line-number" data-line-number="295"></td>
        <td id="LC295" class="blob-code blob-code-inner js-file-line"><span class="pl-s">If true return the decimal value of digit CHAR in RADIX.<span class="pl-pds">&quot;</span></span></td>
      </tr>
      <tr>
        <td id="L296" class="blob-num js-line-number" data-line-number="296"></td>
        <td id="LC296" class="blob-code blob-code-inner js-file-line">  (<span class="pl-k">or</span> (&lt;= <span class="pl-c1">2</span> (<span class="pl-k">or</span> radix <span class="pl-c1">10</span>) <span class="pl-c1">36</span>)</td>
      </tr>
      <tr>
        <td id="L297" class="blob-num js-line-number" data-line-number="297"></td>
        <td id="LC297" class="blob-code blob-code-inner js-file-line">      (signal &#39;args-out-of-range (<span class="pl-c1">list</span> &#39;radix radix &#39;(<span class="pl-c1">2</span> <span class="pl-c1">36</span>))))</td>
      </tr>
      <tr>
        <td id="L298" class="blob-num js-line-number" data-line-number="298"></td>
        <td id="LC298" class="blob-code blob-code-inner js-file-line">  (<span class="pl-k">let</span> ((n (aref cl-digit-char-table char)))</td>
      </tr>
      <tr>
        <td id="L299" class="blob-num js-line-number" data-line-number="299"></td>
        <td id="LC299" class="blob-code blob-code-inner js-file-line">    (<span class="pl-k">and</span> n (&lt; n (<span class="pl-k">or</span> radix <span class="pl-c1">10</span>)) n)))</td>
      </tr>
      <tr>
        <td id="L300" class="blob-num js-line-number" data-line-number="300"></td>
        <td id="LC300" class="blob-code blob-code-inner js-file-line">
</td>
      </tr>
      <tr>
        <td id="L301" class="blob-num js-line-number" data-line-number="301"></td>
        <td id="LC301" class="blob-code blob-code-inner js-file-line">(defvar cl--random-state</td>
      </tr>
      <tr>
        <td id="L302" class="blob-num js-line-number" data-line-number="302"></td>
        <td id="LC302" class="blob-code blob-code-inner js-file-line">  (vector &#39;cl--random-state-tag -<span class="pl-c1">1</span> <span class="pl-c1">30</span> (cl--random-time)))</td>
      </tr>
      <tr>
        <td id="L303" class="blob-num js-line-number" data-line-number="303"></td>
        <td id="LC303" class="blob-code blob-code-inner js-file-line">
</td>
      </tr>
      <tr>
        <td id="L304" class="blob-num js-line-number" data-line-number="304"></td>
        <td id="LC304" class="blob-code blob-code-inner js-file-line">(defconst cl-most-positive-float <span class="pl-c1">nil</span></td>
      </tr>
      <tr>
        <td id="L305" class="blob-num js-line-number" data-line-number="305"></td>
        <td id="LC305" class="blob-code blob-code-inner js-file-line">  <span class="pl-s"><span class="pl-pds">&quot;</span>The largest value that a Lisp float can hold.</span></td>
      </tr>
      <tr>
        <td id="L306" class="blob-num js-line-number" data-line-number="306"></td>
        <td id="LC306" class="blob-code blob-code-inner js-file-line"><span class="pl-s">If your system supports infinities, this is the largest finite value.</span></td>
      </tr>
      <tr>
        <td id="L307" class="blob-num js-line-number" data-line-number="307"></td>
        <td id="LC307" class="blob-code blob-code-inner js-file-line"><span class="pl-s">For IEEE machines, this is approximately 1.79e+308.</span></td>
      </tr>
      <tr>
        <td id="L308" class="blob-num js-line-number" data-line-number="308"></td>
        <td id="LC308" class="blob-code blob-code-inner js-file-line"><span class="pl-s">Call `cl-float-limits&#39; to set this.<span class="pl-pds">&quot;</span></span>)</td>
      </tr>
      <tr>
        <td id="L309" class="blob-num js-line-number" data-line-number="309"></td>
        <td id="LC309" class="blob-code blob-code-inner js-file-line">
</td>
      </tr>
      <tr>
        <td id="L310" class="blob-num js-line-number" data-line-number="310"></td>
        <td id="LC310" class="blob-code blob-code-inner js-file-line">(defconst cl-most-negative-float <span class="pl-c1">nil</span></td>
      </tr>
      <tr>
        <td id="L311" class="blob-num js-line-number" data-line-number="311"></td>
        <td id="LC311" class="blob-code blob-code-inner js-file-line">  <span class="pl-s"><span class="pl-pds">&quot;</span>The largest negative value that a Lisp float can hold.</span></td>
      </tr>
      <tr>
        <td id="L312" class="blob-num js-line-number" data-line-number="312"></td>
        <td id="LC312" class="blob-code blob-code-inner js-file-line"><span class="pl-s">This is simply -`cl-most-positive-float&#39;.</span></td>
      </tr>
      <tr>
        <td id="L313" class="blob-num js-line-number" data-line-number="313"></td>
        <td id="LC313" class="blob-code blob-code-inner js-file-line"><span class="pl-s">Call `cl-float-limits&#39; to set this.<span class="pl-pds">&quot;</span></span>)</td>
      </tr>
      <tr>
        <td id="L314" class="blob-num js-line-number" data-line-number="314"></td>
        <td id="LC314" class="blob-code blob-code-inner js-file-line">
</td>
      </tr>
      <tr>
        <td id="L315" class="blob-num js-line-number" data-line-number="315"></td>
        <td id="LC315" class="blob-code blob-code-inner js-file-line">(defconst cl-least-positive-float <span class="pl-c1">nil</span></td>
      </tr>
      <tr>
        <td id="L316" class="blob-num js-line-number" data-line-number="316"></td>
        <td id="LC316" class="blob-code blob-code-inner js-file-line">  <span class="pl-s"><span class="pl-pds">&quot;</span>The smallest value greater than zero that a Lisp float can hold.</span></td>
      </tr>
      <tr>
        <td id="L317" class="blob-num js-line-number" data-line-number="317"></td>
        <td id="LC317" class="blob-code blob-code-inner js-file-line"><span class="pl-s">For IEEE machines, it is about 4.94e-324 if denormals are supported,</span></td>
      </tr>
      <tr>
        <td id="L318" class="blob-num js-line-number" data-line-number="318"></td>
        <td id="LC318" class="blob-code blob-code-inner js-file-line"><span class="pl-s">or 2.22e-308 if they are not.</span></td>
      </tr>
      <tr>
        <td id="L319" class="blob-num js-line-number" data-line-number="319"></td>
        <td id="LC319" class="blob-code blob-code-inner js-file-line"><span class="pl-s">Call `cl-float-limits&#39; to set this.<span class="pl-pds">&quot;</span></span>)</td>
      </tr>
      <tr>
        <td id="L320" class="blob-num js-line-number" data-line-number="320"></td>
        <td id="LC320" class="blob-code blob-code-inner js-file-line">
</td>
      </tr>
      <tr>
        <td id="L321" class="blob-num js-line-number" data-line-number="321"></td>
        <td id="LC321" class="blob-code blob-code-inner js-file-line">(defconst cl-least-negative-float <span class="pl-c1">nil</span></td>
      </tr>
      <tr>
        <td id="L322" class="blob-num js-line-number" data-line-number="322"></td>
        <td id="LC322" class="blob-code blob-code-inner js-file-line">  <span class="pl-s"><span class="pl-pds">&quot;</span>The smallest value less than zero that a Lisp float can hold.</span></td>
      </tr>
      <tr>
        <td id="L323" class="blob-num js-line-number" data-line-number="323"></td>
        <td id="LC323" class="blob-code blob-code-inner js-file-line"><span class="pl-s">This is simply -`cl-least-positive-float&#39;.</span></td>
      </tr>
      <tr>
        <td id="L324" class="blob-num js-line-number" data-line-number="324"></td>
        <td id="LC324" class="blob-code blob-code-inner js-file-line"><span class="pl-s">Call `cl-float-limits&#39; to set this.<span class="pl-pds">&quot;</span></span>)</td>
      </tr>
      <tr>
        <td id="L325" class="blob-num js-line-number" data-line-number="325"></td>
        <td id="LC325" class="blob-code blob-code-inner js-file-line">
</td>
      </tr>
      <tr>
        <td id="L326" class="blob-num js-line-number" data-line-number="326"></td>
        <td id="LC326" class="blob-code blob-code-inner js-file-line">(defconst cl-least-positive-normalized-float <span class="pl-c1">nil</span></td>
      </tr>
      <tr>
        <td id="L327" class="blob-num js-line-number" data-line-number="327"></td>
        <td id="LC327" class="blob-code blob-code-inner js-file-line">  <span class="pl-s"><span class="pl-pds">&quot;</span>The smallest normalized Lisp float greater than zero.</span></td>
      </tr>
      <tr>
        <td id="L328" class="blob-num js-line-number" data-line-number="328"></td>
        <td id="LC328" class="blob-code blob-code-inner js-file-line"><span class="pl-s">This is the smallest value for which IEEE denormalization does not lose</span></td>
      </tr>
      <tr>
        <td id="L329" class="blob-num js-line-number" data-line-number="329"></td>
        <td id="LC329" class="blob-code blob-code-inner js-file-line"><span class="pl-s">precision.  For IEEE machines, this value is about 2.22e-308.</span></td>
      </tr>
      <tr>
        <td id="L330" class="blob-num js-line-number" data-line-number="330"></td>
        <td id="LC330" class="blob-code blob-code-inner js-file-line"><span class="pl-s">For machines that do not support the concept of denormalization</span></td>
      </tr>
      <tr>
        <td id="L331" class="blob-num js-line-number" data-line-number="331"></td>
        <td id="LC331" class="blob-code blob-code-inner js-file-line"><span class="pl-s">and gradual underflow, this constant equals `cl-least-positive-float&#39;.</span></td>
      </tr>
      <tr>
        <td id="L332" class="blob-num js-line-number" data-line-number="332"></td>
        <td id="LC332" class="blob-code blob-code-inner js-file-line"><span class="pl-s">Call `cl-float-limits&#39; to set this.<span class="pl-pds">&quot;</span></span>)</td>
      </tr>
      <tr>
        <td id="L333" class="blob-num js-line-number" data-line-number="333"></td>
        <td id="LC333" class="blob-code blob-code-inner js-file-line">
</td>
      </tr>
      <tr>
        <td id="L334" class="blob-num js-line-number" data-line-number="334"></td>
        <td id="LC334" class="blob-code blob-code-inner js-file-line">(defconst cl-least-negative-normalized-float <span class="pl-c1">nil</span></td>
      </tr>
      <tr>
        <td id="L335" class="blob-num js-line-number" data-line-number="335"></td>
        <td id="LC335" class="blob-code blob-code-inner js-file-line">  <span class="pl-s"><span class="pl-pds">&quot;</span>The smallest normalized Lisp float less than zero.</span></td>
      </tr>
      <tr>
        <td id="L336" class="blob-num js-line-number" data-line-number="336"></td>
        <td id="LC336" class="blob-code blob-code-inner js-file-line"><span class="pl-s">This is simply -`cl-least-positive-normalized-float&#39;.</span></td>
      </tr>
      <tr>
        <td id="L337" class="blob-num js-line-number" data-line-number="337"></td>
        <td id="LC337" class="blob-code blob-code-inner js-file-line"><span class="pl-s">Call `cl-float-limits&#39; to set this.<span class="pl-pds">&quot;</span></span>)</td>
      </tr>
      <tr>
        <td id="L338" class="blob-num js-line-number" data-line-number="338"></td>
        <td id="LC338" class="blob-code blob-code-inner js-file-line">
</td>
      </tr>
      <tr>
        <td id="L339" class="blob-num js-line-number" data-line-number="339"></td>
        <td id="LC339" class="blob-code blob-code-inner js-file-line">(defconst cl-float-epsilon <span class="pl-c1">nil</span></td>
      </tr>
      <tr>
        <td id="L340" class="blob-num js-line-number" data-line-number="340"></td>
        <td id="LC340" class="blob-code blob-code-inner js-file-line">  <span class="pl-s"><span class="pl-pds">&quot;</span>The smallest positive float that adds to 1.0 to give a distinct value.</span></td>
      </tr>
      <tr>
        <td id="L341" class="blob-num js-line-number" data-line-number="341"></td>
        <td id="LC341" class="blob-code blob-code-inner js-file-line"><span class="pl-s">Adding a number less than this to 1.0 returns 1.0 due to roundoff.</span></td>
      </tr>
      <tr>
        <td id="L342" class="blob-num js-line-number" data-line-number="342"></td>
        <td id="LC342" class="blob-code blob-code-inner js-file-line"><span class="pl-s">For IEEE machines, epsilon is about 2.22e-16.</span></td>
      </tr>
      <tr>
        <td id="L343" class="blob-num js-line-number" data-line-number="343"></td>
        <td id="LC343" class="blob-code blob-code-inner js-file-line"><span class="pl-s">Call `cl-float-limits&#39; to set this.<span class="pl-pds">&quot;</span></span>)</td>
      </tr>
      <tr>
        <td id="L344" class="blob-num js-line-number" data-line-number="344"></td>
        <td id="LC344" class="blob-code blob-code-inner js-file-line">
</td>
      </tr>
      <tr>
        <td id="L345" class="blob-num js-line-number" data-line-number="345"></td>
        <td id="LC345" class="blob-code blob-code-inner js-file-line">(defconst cl-float-negative-epsilon <span class="pl-c1">nil</span></td>
      </tr>
      <tr>
        <td id="L346" class="blob-num js-line-number" data-line-number="346"></td>
        <td id="LC346" class="blob-code blob-code-inner js-file-line">  <span class="pl-s"><span class="pl-pds">&quot;</span>The smallest positive float that subtracts from 1.0 to give a distinct value.</span></td>
      </tr>
      <tr>
        <td id="L347" class="blob-num js-line-number" data-line-number="347"></td>
        <td id="LC347" class="blob-code blob-code-inner js-file-line"><span class="pl-s">For IEEE machines, it is about 1.11e-16.</span></td>
      </tr>
      <tr>
        <td id="L348" class="blob-num js-line-number" data-line-number="348"></td>
        <td id="LC348" class="blob-code blob-code-inner js-file-line"><span class="pl-s">Call `cl-float-limits&#39; to set this.<span class="pl-pds">&quot;</span></span>)</td>
      </tr>
      <tr>
        <td id="L349" class="blob-num js-line-number" data-line-number="349"></td>
        <td id="LC349" class="blob-code blob-code-inner js-file-line">
</td>
      </tr>
      <tr>
        <td id="L350" class="blob-num js-line-number" data-line-number="350"></td>
        <td id="LC350" class="blob-code blob-code-inner js-file-line">
</td>
      </tr>
      <tr>
        <td id="L351" class="blob-num js-line-number" data-line-number="351"></td>
        <td id="LC351" class="blob-code blob-code-inner js-file-line"><span class="pl-c">;;; Sequence functions.</span></td>
      </tr>
      <tr>
        <td id="L352" class="blob-num js-line-number" data-line-number="352"></td>
        <td id="LC352" class="blob-code blob-code-inner js-file-line">
</td>
      </tr>
      <tr>
        <td id="L353" class="blob-num js-line-number" data-line-number="353"></td>
        <td id="LC353" class="blob-code blob-code-inner js-file-line">(cl--defalias &#39;cl-copy-seq &#39;copy-sequence)</td>
      </tr>
      <tr>
        <td id="L354" class="blob-num js-line-number" data-line-number="354"></td>
        <td id="LC354" class="blob-code blob-code-inner js-file-line">
</td>
      </tr>
      <tr>
        <td id="L355" class="blob-num js-line-number" data-line-number="355"></td>
        <td id="LC355" class="blob-code blob-code-inner js-file-line">(declare-function cl--mapcar-many <span class="pl-s"><span class="pl-pds">&quot;</span>cl-extra<span class="pl-pds">&quot;</span></span> (cl-func cl-seqs))</td>
      </tr>
      <tr>
        <td id="L356" class="blob-num js-line-number" data-line-number="356"></td>
        <td id="LC356" class="blob-code blob-code-inner js-file-line">
</td>
      </tr>
      <tr>
        <td id="L357" class="blob-num js-line-number" data-line-number="357"></td>
        <td id="LC357" class="blob-code blob-code-inner js-file-line">(<span class="pl-k">defun</span> <span class="pl-en">cl-mapcar</span> (cl-func cl-x &amp;rest cl-rest)</td>
      </tr>
      <tr>
        <td id="L358" class="blob-num js-line-number" data-line-number="358"></td>
        <td id="LC358" class="blob-code blob-code-inner js-file-line">  <span class="pl-s"><span class="pl-pds">&quot;</span>Apply FUNCTION to each element of SEQ, and make a list of the results.</span></td>
      </tr>
      <tr>
        <td id="L359" class="blob-num js-line-number" data-line-number="359"></td>
        <td id="LC359" class="blob-code blob-code-inner js-file-line"><span class="pl-s">If there are several SEQs, FUNCTION is called with that many arguments,</span></td>
      </tr>
      <tr>
        <td id="L360" class="blob-num js-line-number" data-line-number="360"></td>
        <td id="LC360" class="blob-code blob-code-inner js-file-line"><span class="pl-s">and mapping stops as soon as the shortest list runs out.  With just one</span></td>
      </tr>
      <tr>
        <td id="L361" class="blob-num js-line-number" data-line-number="361"></td>
        <td id="LC361" class="blob-code blob-code-inner js-file-line"><span class="pl-s">SEQ, this is like `mapcar&#39;.  With several, it is like the Common Lisp</span></td>
      </tr>
      <tr>
        <td id="L362" class="blob-num js-line-number" data-line-number="362"></td>
        <td id="LC362" class="blob-code blob-code-inner js-file-line"><span class="pl-s">`mapcar&#39; function extended to arbitrary sequence types.</span></td>
      </tr>
      <tr>
        <td id="L363" class="blob-num js-line-number" data-line-number="363"></td>
        <td id="LC363" class="blob-code blob-code-inner js-file-line"><span class="pl-s"><span class="pl-cce">\n</span>(fn FUNCTION SEQ...)<span class="pl-pds">&quot;</span></span></td>
      </tr>
      <tr>
        <td id="L364" class="blob-num js-line-number" data-line-number="364"></td>
        <td id="LC364" class="blob-code blob-code-inner js-file-line">  (<span class="pl-k">if</span> cl-rest</td>
      </tr>
      <tr>
        <td id="L365" class="blob-num js-line-number" data-line-number="365"></td>
        <td id="LC365" class="blob-code blob-code-inner js-file-line">      (<span class="pl-k">if</span> (<span class="pl-k">or</span> (<span class="pl-c1">cdr</span> cl-rest) (nlistp cl-x) (nlistp (<span class="pl-c1">car</span> cl-rest)))</td>
      </tr>
      <tr>
        <td id="L366" class="blob-num js-line-number" data-line-number="366"></td>
        <td id="LC366" class="blob-code blob-code-inner js-file-line">	  (cl--mapcar-many cl-func (<span class="pl-c1">cons</span> cl-x cl-rest))</td>
      </tr>
      <tr>
        <td id="L367" class="blob-num js-line-number" data-line-number="367"></td>
        <td id="LC367" class="blob-code blob-code-inner js-file-line">	(<span class="pl-k">let</span> ((cl-res <span class="pl-c1">nil</span>) (cl-y (<span class="pl-c1">car</span> cl-rest)))</td>
      </tr>
      <tr>
        <td id="L368" class="blob-num js-line-number" data-line-number="368"></td>
        <td id="LC368" class="blob-code blob-code-inner js-file-line">	  (while (<span class="pl-k">and</span> cl-x cl-y)</td>
      </tr>
      <tr>
        <td id="L369" class="blob-num js-line-number" data-line-number="369"></td>
        <td id="LC369" class="blob-code blob-code-inner js-file-line">	    (push (funcall cl-func (pop cl-x) (pop cl-y)) cl-res))</td>
      </tr>
      <tr>
        <td id="L370" class="blob-num js-line-number" data-line-number="370"></td>
        <td id="LC370" class="blob-code blob-code-inner js-file-line">	  (nreverse cl-res)))</td>
      </tr>
      <tr>
        <td id="L371" class="blob-num js-line-number" data-line-number="371"></td>
        <td id="LC371" class="blob-code blob-code-inner js-file-line">    (mapcar cl-func cl-x)))</td>
      </tr>
      <tr>
        <td id="L372" class="blob-num js-line-number" data-line-number="372"></td>
        <td id="LC372" class="blob-code blob-code-inner js-file-line">
</td>
      </tr>
      <tr>
        <td id="L373" class="blob-num js-line-number" data-line-number="373"></td>
        <td id="LC373" class="blob-code blob-code-inner js-file-line">(cl--defalias &#39;cl-svref &#39;aref)</td>
      </tr>
      <tr>
        <td id="L374" class="blob-num js-line-number" data-line-number="374"></td>
        <td id="LC374" class="blob-code blob-code-inner js-file-line">
</td>
      </tr>
      <tr>
        <td id="L375" class="blob-num js-line-number" data-line-number="375"></td>
        <td id="LC375" class="blob-code blob-code-inner js-file-line"><span class="pl-c">;;; List functions.</span></td>
      </tr>
      <tr>
        <td id="L376" class="blob-num js-line-number" data-line-number="376"></td>
        <td id="LC376" class="blob-code blob-code-inner js-file-line">
</td>
      </tr>
      <tr>
        <td id="L377" class="blob-num js-line-number" data-line-number="377"></td>
        <td id="LC377" class="blob-code blob-code-inner js-file-line">(cl--defalias &#39;cl-first &#39;<span class="pl-c1">car</span>)</td>
      </tr>
      <tr>
        <td id="L378" class="blob-num js-line-number" data-line-number="378"></td>
        <td id="LC378" class="blob-code blob-code-inner js-file-line">(cl--defalias &#39;cl-second &#39;cadr)</td>
      </tr>
      <tr>
        <td id="L379" class="blob-num js-line-number" data-line-number="379"></td>
        <td id="LC379" class="blob-code blob-code-inner js-file-line">(cl--defalias &#39;cl-rest &#39;<span class="pl-c1">cdr</span>)</td>
      </tr>
      <tr>
        <td id="L380" class="blob-num js-line-number" data-line-number="380"></td>
        <td id="LC380" class="blob-code blob-code-inner js-file-line">
</td>
      </tr>
      <tr>
        <td id="L381" class="blob-num js-line-number" data-line-number="381"></td>
        <td id="LC381" class="blob-code blob-code-inner js-file-line">(<span class="pl-k">defun</span> <span class="pl-en">cl-endp</span> (x)</td>
      </tr>
      <tr>
        <td id="L382" class="blob-num js-line-number" data-line-number="382"></td>
        <td id="LC382" class="blob-code blob-code-inner js-file-line">  <span class="pl-s"><span class="pl-pds">&quot;</span>Return true if X is the empty list; false if it is a cons.</span></td>
      </tr>
      <tr>
        <td id="L383" class="blob-num js-line-number" data-line-number="383"></td>
        <td id="LC383" class="blob-code blob-code-inner js-file-line"><span class="pl-s">Signal an error if X is not a list.<span class="pl-pds">&quot;</span></span></td>
      </tr>
      <tr>
        <td id="L384" class="blob-num js-line-number" data-line-number="384"></td>
        <td id="LC384" class="blob-code blob-code-inner js-file-line">  (<span class="pl-k">if</span> (<span class="pl-c1">listp</span> x)</td>
      </tr>
      <tr>
        <td id="L385" class="blob-num js-line-number" data-line-number="385"></td>
        <td id="LC385" class="blob-code blob-code-inner js-file-line">      (<span class="pl-c1">null</span> x)</td>
      </tr>
      <tr>
        <td id="L386" class="blob-num js-line-number" data-line-number="386"></td>
        <td id="LC386" class="blob-code blob-code-inner js-file-line">    (signal &#39;wrong-type-argument (<span class="pl-c1">list</span> &#39;<span class="pl-c1">listp</span> x &#39;x))))</td>
      </tr>
      <tr>
        <td id="L387" class="blob-num js-line-number" data-line-number="387"></td>
        <td id="LC387" class="blob-code blob-code-inner js-file-line">
</td>
      </tr>
      <tr>
        <td id="L388" class="blob-num js-line-number" data-line-number="388"></td>
        <td id="LC388" class="blob-code blob-code-inner js-file-line">(cl--defalias &#39;cl-third &#39;cl-caddr <span class="pl-s"><span class="pl-pds">&quot;</span>Return the third element of the list X.<span class="pl-pds">&quot;</span></span>)</td>
      </tr>
      <tr>
        <td id="L389" class="blob-num js-line-number" data-line-number="389"></td>
        <td id="LC389" class="blob-code blob-code-inner js-file-line">(cl--defalias &#39;cl-fourth &#39;cl-cadddr <span class="pl-s"><span class="pl-pds">&quot;</span>Return the fourth element of the list X.<span class="pl-pds">&quot;</span></span>)</td>
      </tr>
      <tr>
        <td id="L390" class="blob-num js-line-number" data-line-number="390"></td>
        <td id="LC390" class="blob-code blob-code-inner js-file-line">
</td>
      </tr>
      <tr>
        <td id="L391" class="blob-num js-line-number" data-line-number="391"></td>
        <td id="LC391" class="blob-code blob-code-inner js-file-line">(defsubst cl-fifth (x)</td>
      </tr>
      <tr>
        <td id="L392" class="blob-num js-line-number" data-line-number="392"></td>
        <td id="LC392" class="blob-code blob-code-inner js-file-line">  <span class="pl-s"><span class="pl-pds">&quot;</span>Return the fifth element of the list X.<span class="pl-pds">&quot;</span></span></td>
      </tr>
      <tr>
        <td id="L393" class="blob-num js-line-number" data-line-number="393"></td>
        <td id="LC393" class="blob-code blob-code-inner js-file-line">  (declare (gv-setter (<span class="pl-c1">lambda</span> (store) `(setcar (nthcdr <span class="pl-c1">4</span> ,x) ,store))))</td>
      </tr>
      <tr>
        <td id="L394" class="blob-num js-line-number" data-line-number="394"></td>
        <td id="LC394" class="blob-code blob-code-inner js-file-line">  (nth <span class="pl-c1">4</span> x))</td>
      </tr>
      <tr>
        <td id="L395" class="blob-num js-line-number" data-line-number="395"></td>
        <td id="LC395" class="blob-code blob-code-inner js-file-line">
</td>
      </tr>
      <tr>
        <td id="L396" class="blob-num js-line-number" data-line-number="396"></td>
        <td id="LC396" class="blob-code blob-code-inner js-file-line">(defsubst cl-sixth (x)</td>
      </tr>
      <tr>
        <td id="L397" class="blob-num js-line-number" data-line-number="397"></td>
        <td id="LC397" class="blob-code blob-code-inner js-file-line">  <span class="pl-s"><span class="pl-pds">&quot;</span>Return the sixth element of the list X.<span class="pl-pds">&quot;</span></span></td>
      </tr>
      <tr>
        <td id="L398" class="blob-num js-line-number" data-line-number="398"></td>
        <td id="LC398" class="blob-code blob-code-inner js-file-line">  (declare (gv-setter (<span class="pl-c1">lambda</span> (store) `(setcar (nthcdr <span class="pl-c1">5</span> ,x) ,store))))</td>
      </tr>
      <tr>
        <td id="L399" class="blob-num js-line-number" data-line-number="399"></td>
        <td id="LC399" class="blob-code blob-code-inner js-file-line">  (nth <span class="pl-c1">5</span> x))</td>
      </tr>
      <tr>
        <td id="L400" class="blob-num js-line-number" data-line-number="400"></td>
        <td id="LC400" class="blob-code blob-code-inner js-file-line">
</td>
      </tr>
      <tr>
        <td id="L401" class="blob-num js-line-number" data-line-number="401"></td>
        <td id="LC401" class="blob-code blob-code-inner js-file-line">(defsubst cl-seventh (x)</td>
      </tr>
      <tr>
        <td id="L402" class="blob-num js-line-number" data-line-number="402"></td>
        <td id="LC402" class="blob-code blob-code-inner js-file-line">  <span class="pl-s"><span class="pl-pds">&quot;</span>Return the seventh element of the list X.<span class="pl-pds">&quot;</span></span></td>
      </tr>
      <tr>
        <td id="L403" class="blob-num js-line-number" data-line-number="403"></td>
        <td id="LC403" class="blob-code blob-code-inner js-file-line">  (declare (gv-setter (<span class="pl-c1">lambda</span> (store) `(setcar (nthcdr <span class="pl-c1">6</span> ,x) ,store))))</td>
      </tr>
      <tr>
        <td id="L404" class="blob-num js-line-number" data-line-number="404"></td>
        <td id="LC404" class="blob-code blob-code-inner js-file-line">  (nth <span class="pl-c1">6</span> x))</td>
      </tr>
      <tr>
        <td id="L405" class="blob-num js-line-number" data-line-number="405"></td>
        <td id="LC405" class="blob-code blob-code-inner js-file-line">
</td>
      </tr>
      <tr>
        <td id="L406" class="blob-num js-line-number" data-line-number="406"></td>
        <td id="LC406" class="blob-code blob-code-inner js-file-line">(defsubst cl-eighth (x)</td>
      </tr>
      <tr>
        <td id="L407" class="blob-num js-line-number" data-line-number="407"></td>
        <td id="LC407" class="blob-code blob-code-inner js-file-line">  <span class="pl-s"><span class="pl-pds">&quot;</span>Return the eighth element of the list X.<span class="pl-pds">&quot;</span></span></td>
      </tr>
      <tr>
        <td id="L408" class="blob-num js-line-number" data-line-number="408"></td>
        <td id="LC408" class="blob-code blob-code-inner js-file-line">  (declare (gv-setter (<span class="pl-c1">lambda</span> (store) `(setcar (nthcdr <span class="pl-c1">7</span> ,x) ,store))))</td>
      </tr>
      <tr>
        <td id="L409" class="blob-num js-line-number" data-line-number="409"></td>
        <td id="LC409" class="blob-code blob-code-inner js-file-line">  (nth <span class="pl-c1">7</span> x))</td>
      </tr>
      <tr>
        <td id="L410" class="blob-num js-line-number" data-line-number="410"></td>
        <td id="LC410" class="blob-code blob-code-inner js-file-line">
</td>
      </tr>
      <tr>
        <td id="L411" class="blob-num js-line-number" data-line-number="411"></td>
        <td id="LC411" class="blob-code blob-code-inner js-file-line">(defsubst cl-ninth (x)</td>
      </tr>
      <tr>
        <td id="L412" class="blob-num js-line-number" data-line-number="412"></td>
        <td id="LC412" class="blob-code blob-code-inner js-file-line">  <span class="pl-s"><span class="pl-pds">&quot;</span>Return the ninth element of the list X.<span class="pl-pds">&quot;</span></span></td>
      </tr>
      <tr>
        <td id="L413" class="blob-num js-line-number" data-line-number="413"></td>
        <td id="LC413" class="blob-code blob-code-inner js-file-line">  (declare (gv-setter (<span class="pl-c1">lambda</span> (store) `(setcar (nthcdr <span class="pl-c1">8</span> ,x) ,store))))</td>
      </tr>
      <tr>
        <td id="L414" class="blob-num js-line-number" data-line-number="414"></td>
        <td id="LC414" class="blob-code blob-code-inner js-file-line">  (nth <span class="pl-c1">8</span> x))</td>
      </tr>
      <tr>
        <td id="L415" class="blob-num js-line-number" data-line-number="415"></td>
        <td id="LC415" class="blob-code blob-code-inner js-file-line">
</td>
      </tr>
      <tr>
        <td id="L416" class="blob-num js-line-number" data-line-number="416"></td>
        <td id="LC416" class="blob-code blob-code-inner js-file-line">(defsubst cl-tenth (x)</td>
      </tr>
      <tr>
        <td id="L417" class="blob-num js-line-number" data-line-number="417"></td>
        <td id="LC417" class="blob-code blob-code-inner js-file-line">  <span class="pl-s"><span class="pl-pds">&quot;</span>Return the tenth element of the list X.<span class="pl-pds">&quot;</span></span></td>
      </tr>
      <tr>
        <td id="L418" class="blob-num js-line-number" data-line-number="418"></td>
        <td id="LC418" class="blob-code blob-code-inner js-file-line">  (declare (gv-setter (<span class="pl-c1">lambda</span> (store) `(setcar (nthcdr <span class="pl-c1">9</span> ,x) ,store))))</td>
      </tr>
      <tr>
        <td id="L419" class="blob-num js-line-number" data-line-number="419"></td>
        <td id="LC419" class="blob-code blob-code-inner js-file-line">  (nth <span class="pl-c1">9</span> x))</td>
      </tr>
      <tr>
        <td id="L420" class="blob-num js-line-number" data-line-number="420"></td>
        <td id="LC420" class="blob-code blob-code-inner js-file-line">
</td>
      </tr>
      <tr>
        <td id="L421" class="blob-num js-line-number" data-line-number="421"></td>
        <td id="LC421" class="blob-code blob-code-inner js-file-line">(<span class="pl-k">defun</span> <span class="pl-en">cl-caaar</span> (x)</td>
      </tr>
      <tr>
        <td id="L422" class="blob-num js-line-number" data-line-number="422"></td>
        <td id="LC422" class="blob-code blob-code-inner js-file-line">  <span class="pl-s"><span class="pl-pds">&quot;</span>Return the `car&#39; of the `car&#39; of the `car&#39; of X.<span class="pl-pds">&quot;</span></span></td>
      </tr>
      <tr>
        <td id="L423" class="blob-num js-line-number" data-line-number="423"></td>
        <td id="LC423" class="blob-code blob-code-inner js-file-line">  (declare (compiler-macro internal--compiler-macro-cXXr))</td>
      </tr>
      <tr>
        <td id="L424" class="blob-num js-line-number" data-line-number="424"></td>
        <td id="LC424" class="blob-code blob-code-inner js-file-line">  (<span class="pl-c1">car</span> (<span class="pl-c1">car</span> (<span class="pl-c1">car</span> x))))</td>
      </tr>
      <tr>
        <td id="L425" class="blob-num js-line-number" data-line-number="425"></td>
        <td id="LC425" class="blob-code blob-code-inner js-file-line">
</td>
      </tr>
      <tr>
        <td id="L426" class="blob-num js-line-number" data-line-number="426"></td>
        <td id="LC426" class="blob-code blob-code-inner js-file-line">(<span class="pl-k">defun</span> <span class="pl-en">cl-caadr</span> (x)</td>
      </tr>
      <tr>
        <td id="L427" class="blob-num js-line-number" data-line-number="427"></td>
        <td id="LC427" class="blob-code blob-code-inner js-file-line">  <span class="pl-s"><span class="pl-pds">&quot;</span>Return the `car&#39; of the `car&#39; of the `cdr&#39; of X.<span class="pl-pds">&quot;</span></span></td>
      </tr>
      <tr>
        <td id="L428" class="blob-num js-line-number" data-line-number="428"></td>
        <td id="LC428" class="blob-code blob-code-inner js-file-line">  (declare (compiler-macro internal--compiler-macro-cXXr))</td>
      </tr>
      <tr>
        <td id="L429" class="blob-num js-line-number" data-line-number="429"></td>
        <td id="LC429" class="blob-code blob-code-inner js-file-line">  (<span class="pl-c1">car</span> (<span class="pl-c1">car</span> (<span class="pl-c1">cdr</span> x))))</td>
      </tr>
      <tr>
        <td id="L430" class="blob-num js-line-number" data-line-number="430"></td>
        <td id="LC430" class="blob-code blob-code-inner js-file-line">
</td>
      </tr>
      <tr>
        <td id="L431" class="blob-num js-line-number" data-line-number="431"></td>
        <td id="LC431" class="blob-code blob-code-inner js-file-line">(<span class="pl-k">defun</span> <span class="pl-en">cl-cadar</span> (x)</td>
      </tr>
      <tr>
        <td id="L432" class="blob-num js-line-number" data-line-number="432"></td>
        <td id="LC432" class="blob-code blob-code-inner js-file-line">  <span class="pl-s"><span class="pl-pds">&quot;</span>Return the `car&#39; of the `cdr&#39; of the `car&#39; of X.<span class="pl-pds">&quot;</span></span></td>
      </tr>
      <tr>
        <td id="L433" class="blob-num js-line-number" data-line-number="433"></td>
        <td id="LC433" class="blob-code blob-code-inner js-file-line">  (declare (compiler-macro internal--compiler-macro-cXXr))</td>
      </tr>
      <tr>
        <td id="L434" class="blob-num js-line-number" data-line-number="434"></td>
        <td id="LC434" class="blob-code blob-code-inner js-file-line">  (<span class="pl-c1">car</span> (<span class="pl-c1">cdr</span> (<span class="pl-c1">car</span> x))))</td>
      </tr>
      <tr>
        <td id="L435" class="blob-num js-line-number" data-line-number="435"></td>
        <td id="LC435" class="blob-code blob-code-inner js-file-line">
</td>
      </tr>
      <tr>
        <td id="L436" class="blob-num js-line-number" data-line-number="436"></td>
        <td id="LC436" class="blob-code blob-code-inner js-file-line">(<span class="pl-k">defun</span> <span class="pl-en">cl-caddr</span> (x)</td>
      </tr>
      <tr>
        <td id="L437" class="blob-num js-line-number" data-line-number="437"></td>
        <td id="LC437" class="blob-code blob-code-inner js-file-line">  <span class="pl-s"><span class="pl-pds">&quot;</span>Return the `car&#39; of the `cdr&#39; of the `cdr&#39; of X.<span class="pl-pds">&quot;</span></span></td>
      </tr>
      <tr>
        <td id="L438" class="blob-num js-line-number" data-line-number="438"></td>
        <td id="LC438" class="blob-code blob-code-inner js-file-line">  (declare (compiler-macro internal--compiler-macro-cXXr))</td>
      </tr>
      <tr>
        <td id="L439" class="blob-num js-line-number" data-line-number="439"></td>
        <td id="LC439" class="blob-code blob-code-inner js-file-line">  (<span class="pl-c1">car</span> (<span class="pl-c1">cdr</span> (<span class="pl-c1">cdr</span> x))))</td>
      </tr>
      <tr>
        <td id="L440" class="blob-num js-line-number" data-line-number="440"></td>
        <td id="LC440" class="blob-code blob-code-inner js-file-line">
</td>
      </tr>
      <tr>
        <td id="L441" class="blob-num js-line-number" data-line-number="441"></td>
        <td id="LC441" class="blob-code blob-code-inner js-file-line">(<span class="pl-k">defun</span> <span class="pl-en">cl-cdaar</span> (x)</td>
      </tr>
      <tr>
        <td id="L442" class="blob-num js-line-number" data-line-number="442"></td>
        <td id="LC442" class="blob-code blob-code-inner js-file-line">  <span class="pl-s"><span class="pl-pds">&quot;</span>Return the `cdr&#39; of the `car&#39; of the `car&#39; of X.<span class="pl-pds">&quot;</span></span></td>
      </tr>
      <tr>
        <td id="L443" class="blob-num js-line-number" data-line-number="443"></td>
        <td id="LC443" class="blob-code blob-code-inner js-file-line">  (declare (compiler-macro internal--compiler-macro-cXXr))</td>
      </tr>
      <tr>
        <td id="L444" class="blob-num js-line-number" data-line-number="444"></td>
        <td id="LC444" class="blob-code blob-code-inner js-file-line">  (<span class="pl-c1">cdr</span> (<span class="pl-c1">car</span> (<span class="pl-c1">car</span> x))))</td>
      </tr>
      <tr>
        <td id="L445" class="blob-num js-line-number" data-line-number="445"></td>
        <td id="LC445" class="blob-code blob-code-inner js-file-line">
</td>
      </tr>
      <tr>
        <td id="L446" class="blob-num js-line-number" data-line-number="446"></td>
        <td id="LC446" class="blob-code blob-code-inner js-file-line">(<span class="pl-k">defun</span> <span class="pl-en">cl-cdadr</span> (x)</td>
      </tr>
      <tr>
        <td id="L447" class="blob-num js-line-number" data-line-number="447"></td>
        <td id="LC447" class="blob-code blob-code-inner js-file-line">  <span class="pl-s"><span class="pl-pds">&quot;</span>Return the `cdr&#39; of the `car&#39; of the `cdr&#39; of X.<span class="pl-pds">&quot;</span></span></td>
      </tr>
      <tr>
        <td id="L448" class="blob-num js-line-number" data-line-number="448"></td>
        <td id="LC448" class="blob-code blob-code-inner js-file-line">  (declare (compiler-macro internal--compiler-macro-cXXr))</td>
      </tr>
      <tr>
        <td id="L449" class="blob-num js-line-number" data-line-number="449"></td>
        <td id="LC449" class="blob-code blob-code-inner js-file-line">  (<span class="pl-c1">cdr</span> (<span class="pl-c1">car</span> (<span class="pl-c1">cdr</span> x))))</td>
      </tr>
      <tr>
        <td id="L450" class="blob-num js-line-number" data-line-number="450"></td>
        <td id="LC450" class="blob-code blob-code-inner js-file-line">
</td>
      </tr>
      <tr>
        <td id="L451" class="blob-num js-line-number" data-line-number="451"></td>
        <td id="LC451" class="blob-code blob-code-inner js-file-line">(<span class="pl-k">defun</span> <span class="pl-en">cl-cddar</span> (x)</td>
      </tr>
      <tr>
        <td id="L452" class="blob-num js-line-number" data-line-number="452"></td>
        <td id="LC452" class="blob-code blob-code-inner js-file-line">  <span class="pl-s"><span class="pl-pds">&quot;</span>Return the `cdr&#39; of the `cdr&#39; of the `car&#39; of X.<span class="pl-pds">&quot;</span></span></td>
      </tr>
      <tr>
        <td id="L453" class="blob-num js-line-number" data-line-number="453"></td>
        <td id="LC453" class="blob-code blob-code-inner js-file-line">  (declare (compiler-macro internal--compiler-macro-cXXr))</td>
      </tr>
      <tr>
        <td id="L454" class="blob-num js-line-number" data-line-number="454"></td>
        <td id="LC454" class="blob-code blob-code-inner js-file-line">  (<span class="pl-c1">cdr</span> (<span class="pl-c1">cdr</span> (<span class="pl-c1">car</span> x))))</td>
      </tr>
      <tr>
        <td id="L455" class="blob-num js-line-number" data-line-number="455"></td>
        <td id="LC455" class="blob-code blob-code-inner js-file-line">
</td>
      </tr>
      <tr>
        <td id="L456" class="blob-num js-line-number" data-line-number="456"></td>
        <td id="LC456" class="blob-code blob-code-inner js-file-line">(<span class="pl-k">defun</span> <span class="pl-en">cl-cdddr</span> (x)</td>
      </tr>
      <tr>
        <td id="L457" class="blob-num js-line-number" data-line-number="457"></td>
        <td id="LC457" class="blob-code blob-code-inner js-file-line">  <span class="pl-s"><span class="pl-pds">&quot;</span>Return the `cdr&#39; of the `cdr&#39; of the `cdr&#39; of X.<span class="pl-pds">&quot;</span></span></td>
      </tr>
      <tr>
        <td id="L458" class="blob-num js-line-number" data-line-number="458"></td>
        <td id="LC458" class="blob-code blob-code-inner js-file-line">  (declare (compiler-macro internal--compiler-macro-cXXr))</td>
      </tr>
      <tr>
        <td id="L459" class="blob-num js-line-number" data-line-number="459"></td>
        <td id="LC459" class="blob-code blob-code-inner js-file-line">  (<span class="pl-c1">cdr</span> (<span class="pl-c1">cdr</span> (<span class="pl-c1">cdr</span> x))))</td>
      </tr>
      <tr>
        <td id="L460" class="blob-num js-line-number" data-line-number="460"></td>
        <td id="LC460" class="blob-code blob-code-inner js-file-line">
</td>
      </tr>
      <tr>
        <td id="L461" class="blob-num js-line-number" data-line-number="461"></td>
        <td id="LC461" class="blob-code blob-code-inner js-file-line">(<span class="pl-k">defun</span> <span class="pl-en">cl-caaaar</span> (x)</td>
      </tr>
      <tr>
        <td id="L462" class="blob-num js-line-number" data-line-number="462"></td>
        <td id="LC462" class="blob-code blob-code-inner js-file-line">  <span class="pl-s"><span class="pl-pds">&quot;</span>Return the `car&#39; of the `car&#39; of the `car&#39; of the `car&#39; of X.<span class="pl-pds">&quot;</span></span></td>
      </tr>
      <tr>
        <td id="L463" class="blob-num js-line-number" data-line-number="463"></td>
        <td id="LC463" class="blob-code blob-code-inner js-file-line">  (declare (compiler-macro internal--compiler-macro-cXXr))</td>
      </tr>
      <tr>
        <td id="L464" class="blob-num js-line-number" data-line-number="464"></td>
        <td id="LC464" class="blob-code blob-code-inner js-file-line">  (<span class="pl-c1">car</span> (<span class="pl-c1">car</span> (<span class="pl-c1">car</span> (<span class="pl-c1">car</span> x)))))</td>
      </tr>
      <tr>
        <td id="L465" class="blob-num js-line-number" data-line-number="465"></td>
        <td id="LC465" class="blob-code blob-code-inner js-file-line">
</td>
      </tr>
      <tr>
        <td id="L466" class="blob-num js-line-number" data-line-number="466"></td>
        <td id="LC466" class="blob-code blob-code-inner js-file-line">(<span class="pl-k">defun</span> <span class="pl-en">cl-caaadr</span> (x)</td>
      </tr>
      <tr>
        <td id="L467" class="blob-num js-line-number" data-line-number="467"></td>
        <td id="LC467" class="blob-code blob-code-inner js-file-line">  <span class="pl-s"><span class="pl-pds">&quot;</span>Return the `car&#39; of the `car&#39; of the `car&#39; of the `cdr&#39; of X.<span class="pl-pds">&quot;</span></span></td>
      </tr>
      <tr>
        <td id="L468" class="blob-num js-line-number" data-line-number="468"></td>
        <td id="LC468" class="blob-code blob-code-inner js-file-line">  (declare (compiler-macro internal--compiler-macro-cXXr))</td>
      </tr>
      <tr>
        <td id="L469" class="blob-num js-line-number" data-line-number="469"></td>
        <td id="LC469" class="blob-code blob-code-inner js-file-line">  (<span class="pl-c1">car</span> (<span class="pl-c1">car</span> (<span class="pl-c1">car</span> (<span class="pl-c1">cdr</span> x)))))</td>
      </tr>
      <tr>
        <td id="L470" class="blob-num js-line-number" data-line-number="470"></td>
        <td id="LC470" class="blob-code blob-code-inner js-file-line">
</td>
      </tr>
      <tr>
        <td id="L471" class="blob-num js-line-number" data-line-number="471"></td>
        <td id="LC471" class="blob-code blob-code-inner js-file-line">(<span class="pl-k">defun</span> <span class="pl-en">cl-caadar</span> (x)</td>
      </tr>
      <tr>
        <td id="L472" class="blob-num js-line-number" data-line-number="472"></td>
        <td id="LC472" class="blob-code blob-code-inner js-file-line">  <span class="pl-s"><span class="pl-pds">&quot;</span>Return the `car&#39; of the `car&#39; of the `cdr&#39; of the `car&#39; of X.<span class="pl-pds">&quot;</span></span></td>
      </tr>
      <tr>
        <td id="L473" class="blob-num js-line-number" data-line-number="473"></td>
        <td id="LC473" class="blob-code blob-code-inner js-file-line">  (declare (compiler-macro internal--compiler-macro-cXXr))</td>
      </tr>
      <tr>
        <td id="L474" class="blob-num js-line-number" data-line-number="474"></td>
        <td id="LC474" class="blob-code blob-code-inner js-file-line">  (<span class="pl-c1">car</span> (<span class="pl-c1">car</span> (<span class="pl-c1">cdr</span> (<span class="pl-c1">car</span> x)))))</td>
      </tr>
      <tr>
        <td id="L475" class="blob-num js-line-number" data-line-number="475"></td>
        <td id="LC475" class="blob-code blob-code-inner js-file-line">
</td>
      </tr>
      <tr>
        <td id="L476" class="blob-num js-line-number" data-line-number="476"></td>
        <td id="LC476" class="blob-code blob-code-inner js-file-line">(<span class="pl-k">defun</span> <span class="pl-en">cl-caaddr</span> (x)</td>
      </tr>
      <tr>
        <td id="L477" class="blob-num js-line-number" data-line-number="477"></td>
        <td id="LC477" class="blob-code blob-code-inner js-file-line">  <span class="pl-s"><span class="pl-pds">&quot;</span>Return the `car&#39; of the `car&#39; of the `cdr&#39; of the `cdr&#39; of X.<span class="pl-pds">&quot;</span></span></td>
      </tr>
      <tr>
        <td id="L478" class="blob-num js-line-number" data-line-number="478"></td>
        <td id="LC478" class="blob-code blob-code-inner js-file-line">  (declare (compiler-macro internal--compiler-macro-cXXr))</td>
      </tr>
      <tr>
        <td id="L479" class="blob-num js-line-number" data-line-number="479"></td>
        <td id="LC479" class="blob-code blob-code-inner js-file-line">  (<span class="pl-c1">car</span> (<span class="pl-c1">car</span> (<span class="pl-c1">cdr</span> (<span class="pl-c1">cdr</span> x)))))</td>
      </tr>
      <tr>
        <td id="L480" class="blob-num js-line-number" data-line-number="480"></td>
        <td id="LC480" class="blob-code blob-code-inner js-file-line">
</td>
      </tr>
      <tr>
        <td id="L481" class="blob-num js-line-number" data-line-number="481"></td>
        <td id="LC481" class="blob-code blob-code-inner js-file-line">(<span class="pl-k">defun</span> <span class="pl-en">cl-cadaar</span> (x)</td>
      </tr>
      <tr>
        <td id="L482" class="blob-num js-line-number" data-line-number="482"></td>
        <td id="LC482" class="blob-code blob-code-inner js-file-line">  <span class="pl-s"><span class="pl-pds">&quot;</span>Return the `car&#39; of the `cdr&#39; of the `car&#39; of the `car&#39; of X.<span class="pl-pds">&quot;</span></span></td>
      </tr>
      <tr>
        <td id="L483" class="blob-num js-line-number" data-line-number="483"></td>
        <td id="LC483" class="blob-code blob-code-inner js-file-line">  (declare (compiler-macro internal--compiler-macro-cXXr))</td>
      </tr>
      <tr>
        <td id="L484" class="blob-num js-line-number" data-line-number="484"></td>
        <td id="LC484" class="blob-code blob-code-inner js-file-line">  (<span class="pl-c1">car</span> (<span class="pl-c1">cdr</span> (<span class="pl-c1">car</span> (<span class="pl-c1">car</span> x)))))</td>
      </tr>
      <tr>
        <td id="L485" class="blob-num js-line-number" data-line-number="485"></td>
        <td id="LC485" class="blob-code blob-code-inner js-file-line">
</td>
      </tr>
      <tr>
        <td id="L486" class="blob-num js-line-number" data-line-number="486"></td>
        <td id="LC486" class="blob-code blob-code-inner js-file-line">(<span class="pl-k">defun</span> <span class="pl-en">cl-cadadr</span> (x)</td>
      </tr>
      <tr>
        <td id="L487" class="blob-num js-line-number" data-line-number="487"></td>
        <td id="LC487" class="blob-code blob-code-inner js-file-line">  <span class="pl-s"><span class="pl-pds">&quot;</span>Return the `car&#39; of the `cdr&#39; of the `car&#39; of the `cdr&#39; of X.<span class="pl-pds">&quot;</span></span></td>
      </tr>
      <tr>
        <td id="L488" class="blob-num js-line-number" data-line-number="488"></td>
        <td id="LC488" class="blob-code blob-code-inner js-file-line">  (declare (compiler-macro internal--compiler-macro-cXXr))</td>
      </tr>
      <tr>
        <td id="L489" class="blob-num js-line-number" data-line-number="489"></td>
        <td id="LC489" class="blob-code blob-code-inner js-file-line">  (<span class="pl-c1">car</span> (<span class="pl-c1">cdr</span> (<span class="pl-c1">car</span> (<span class="pl-c1">cdr</span> x)))))</td>
      </tr>
      <tr>
        <td id="L490" class="blob-num js-line-number" data-line-number="490"></td>
        <td id="LC490" class="blob-code blob-code-inner js-file-line">
</td>
      </tr>
      <tr>
        <td id="L491" class="blob-num js-line-number" data-line-number="491"></td>
        <td id="LC491" class="blob-code blob-code-inner js-file-line">(<span class="pl-k">defun</span> <span class="pl-en">cl-caddar</span> (x)</td>
      </tr>
      <tr>
        <td id="L492" class="blob-num js-line-number" data-line-number="492"></td>
        <td id="LC492" class="blob-code blob-code-inner js-file-line">  <span class="pl-s"><span class="pl-pds">&quot;</span>Return the `car&#39; of the `cdr&#39; of the `cdr&#39; of the `car&#39; of X.<span class="pl-pds">&quot;</span></span></td>
      </tr>
      <tr>
        <td id="L493" class="blob-num js-line-number" data-line-number="493"></td>
        <td id="LC493" class="blob-code blob-code-inner js-file-line">  (declare (compiler-macro internal--compiler-macro-cXXr))</td>
      </tr>
      <tr>
        <td id="L494" class="blob-num js-line-number" data-line-number="494"></td>
        <td id="LC494" class="blob-code blob-code-inner js-file-line">  (<span class="pl-c1">car</span> (<span class="pl-c1">cdr</span> (<span class="pl-c1">cdr</span> (<span class="pl-c1">car</span> x)))))</td>
      </tr>
      <tr>
        <td id="L495" class="blob-num js-line-number" data-line-number="495"></td>
        <td id="LC495" class="blob-code blob-code-inner js-file-line">
</td>
      </tr>
      <tr>
        <td id="L496" class="blob-num js-line-number" data-line-number="496"></td>
        <td id="LC496" class="blob-code blob-code-inner js-file-line">(<span class="pl-k">defun</span> <span class="pl-en">cl-cadddr</span> (x)</td>
      </tr>
      <tr>
        <td id="L497" class="blob-num js-line-number" data-line-number="497"></td>
        <td id="LC497" class="blob-code blob-code-inner js-file-line">  <span class="pl-s"><span class="pl-pds">&quot;</span>Return the `car&#39; of the `cdr&#39; of the `cdr&#39; of the `cdr&#39; of X.<span class="pl-pds">&quot;</span></span></td>
      </tr>
      <tr>
        <td id="L498" class="blob-num js-line-number" data-line-number="498"></td>
        <td id="LC498" class="blob-code blob-code-inner js-file-line">  (declare (compiler-macro internal--compiler-macro-cXXr))</td>
      </tr>
      <tr>
        <td id="L499" class="blob-num js-line-number" data-line-number="499"></td>
        <td id="LC499" class="blob-code blob-code-inner js-file-line">  (<span class="pl-c1">car</span> (<span class="pl-c1">cdr</span> (<span class="pl-c1">cdr</span> (<span class="pl-c1">cdr</span> x)))))</td>
      </tr>
      <tr>
        <td id="L500" class="blob-num js-line-number" data-line-number="500"></td>
        <td id="LC500" class="blob-code blob-code-inner js-file-line">
</td>
      </tr>
      <tr>
        <td id="L501" class="blob-num js-line-number" data-line-number="501"></td>
        <td id="LC501" class="blob-code blob-code-inner js-file-line">(<span class="pl-k">defun</span> <span class="pl-en">cl-cdaaar</span> (x)</td>
      </tr>
      <tr>
        <td id="L502" class="blob-num js-line-number" data-line-number="502"></td>
        <td id="LC502" class="blob-code blob-code-inner js-file-line">  <span class="pl-s"><span class="pl-pds">&quot;</span>Return the `cdr&#39; of the `car&#39; of the `car&#39; of the `car&#39; of X.<span class="pl-pds">&quot;</span></span></td>
      </tr>
      <tr>
        <td id="L503" class="blob-num js-line-number" data-line-number="503"></td>
        <td id="LC503" class="blob-code blob-code-inner js-file-line">  (declare (compiler-macro internal--compiler-macro-cXXr))</td>
      </tr>
      <tr>
        <td id="L504" class="blob-num js-line-number" data-line-number="504"></td>
        <td id="LC504" class="blob-code blob-code-inner js-file-line">  (<span class="pl-c1">cdr</span> (<span class="pl-c1">car</span> (<span class="pl-c1">car</span> (<span class="pl-c1">car</span> x)))))</td>
      </tr>
      <tr>
        <td id="L505" class="blob-num js-line-number" data-line-number="505"></td>
        <td id="LC505" class="blob-code blob-code-inner js-file-line">
</td>
      </tr>
      <tr>
        <td id="L506" class="blob-num js-line-number" data-line-number="506"></td>
        <td id="LC506" class="blob-code blob-code-inner js-file-line">(<span class="pl-k">defun</span> <span class="pl-en">cl-cdaadr</span> (x)</td>
      </tr>
      <tr>
        <td id="L507" class="blob-num js-line-number" data-line-number="507"></td>
        <td id="LC507" class="blob-code blob-code-inner js-file-line">  <span class="pl-s"><span class="pl-pds">&quot;</span>Return the `cdr&#39; of the `car&#39; of the `car&#39; of the `cdr&#39; of X.<span class="pl-pds">&quot;</span></span></td>
      </tr>
      <tr>
        <td id="L508" class="blob-num js-line-number" data-line-number="508"></td>
        <td id="LC508" class="blob-code blob-code-inner js-file-line">  (declare (compiler-macro internal--compiler-macro-cXXr))</td>
      </tr>
      <tr>
        <td id="L509" class="blob-num js-line-number" data-line-number="509"></td>
        <td id="LC509" class="blob-code blob-code-inner js-file-line">  (<span class="pl-c1">cdr</span> (<span class="pl-c1">car</span> (<span class="pl-c1">car</span> (<span class="pl-c1">cdr</span> x)))))</td>
      </tr>
      <tr>
        <td id="L510" class="blob-num js-line-number" data-line-number="510"></td>
        <td id="LC510" class="blob-code blob-code-inner js-file-line">
</td>
      </tr>
      <tr>
        <td id="L511" class="blob-num js-line-number" data-line-number="511"></td>
        <td id="LC511" class="blob-code blob-code-inner js-file-line">(<span class="pl-k">defun</span> <span class="pl-en">cl-cdadar</span> (x)</td>
      </tr>
      <tr>
        <td id="L512" class="blob-num js-line-number" data-line-number="512"></td>
        <td id="LC512" class="blob-code blob-code-inner js-file-line">  <span class="pl-s"><span class="pl-pds">&quot;</span>Return the `cdr&#39; of the `car&#39; of the `cdr&#39; of the `car&#39; of X.<span class="pl-pds">&quot;</span></span></td>
      </tr>
      <tr>
        <td id="L513" class="blob-num js-line-number" data-line-number="513"></td>
        <td id="LC513" class="blob-code blob-code-inner js-file-line">  (declare (compiler-macro internal--compiler-macro-cXXr))</td>
      </tr>
      <tr>
        <td id="L514" class="blob-num js-line-number" data-line-number="514"></td>
        <td id="LC514" class="blob-code blob-code-inner js-file-line">  (<span class="pl-c1">cdr</span> (<span class="pl-c1">car</span> (<span class="pl-c1">cdr</span> (<span class="pl-c1">car</span> x)))))</td>
      </tr>
      <tr>
        <td id="L515" class="blob-num js-line-number" data-line-number="515"></td>
        <td id="LC515" class="blob-code blob-code-inner js-file-line">
</td>
      </tr>
      <tr>
        <td id="L516" class="blob-num js-line-number" data-line-number="516"></td>
        <td id="LC516" class="blob-code blob-code-inner js-file-line">(<span class="pl-k">defun</span> <span class="pl-en">cl-cdaddr</span> (x)</td>
      </tr>
      <tr>
        <td id="L517" class="blob-num js-line-number" data-line-number="517"></td>
        <td id="LC517" class="blob-code blob-code-inner js-file-line">  <span class="pl-s"><span class="pl-pds">&quot;</span>Return the `cdr&#39; of the `car&#39; of the `cdr&#39; of the `cdr&#39; of X.<span class="pl-pds">&quot;</span></span></td>
      </tr>
      <tr>
        <td id="L518" class="blob-num js-line-number" data-line-number="518"></td>
        <td id="LC518" class="blob-code blob-code-inner js-file-line">  (declare (compiler-macro internal--compiler-macro-cXXr))</td>
      </tr>
      <tr>
        <td id="L519" class="blob-num js-line-number" data-line-number="519"></td>
        <td id="LC519" class="blob-code blob-code-inner js-file-line">  (<span class="pl-c1">cdr</span> (<span class="pl-c1">car</span> (<span class="pl-c1">cdr</span> (<span class="pl-c1">cdr</span> x)))))</td>
      </tr>
      <tr>
        <td id="L520" class="blob-num js-line-number" data-line-number="520"></td>
        <td id="LC520" class="blob-code blob-code-inner js-file-line">
</td>
      </tr>
      <tr>
        <td id="L521" class="blob-num js-line-number" data-line-number="521"></td>
        <td id="LC521" class="blob-code blob-code-inner js-file-line">(<span class="pl-k">defun</span> <span class="pl-en">cl-cddaar</span> (x)</td>
      </tr>
      <tr>
        <td id="L522" class="blob-num js-line-number" data-line-number="522"></td>
        <td id="LC522" class="blob-code blob-code-inner js-file-line">  <span class="pl-s"><span class="pl-pds">&quot;</span>Return the `cdr&#39; of the `cdr&#39; of the `car&#39; of the `car&#39; of X.<span class="pl-pds">&quot;</span></span></td>
      </tr>
      <tr>
        <td id="L523" class="blob-num js-line-number" data-line-number="523"></td>
        <td id="LC523" class="blob-code blob-code-inner js-file-line">  (declare (compiler-macro internal--compiler-macro-cXXr))</td>
      </tr>
      <tr>
        <td id="L524" class="blob-num js-line-number" data-line-number="524"></td>
        <td id="LC524" class="blob-code blob-code-inner js-file-line">  (<span class="pl-c1">cdr</span> (<span class="pl-c1">cdr</span> (<span class="pl-c1">car</span> (<span class="pl-c1">car</span> x)))))</td>
      </tr>
      <tr>
        <td id="L525" class="blob-num js-line-number" data-line-number="525"></td>
        <td id="LC525" class="blob-code blob-code-inner js-file-line">
</td>
      </tr>
      <tr>
        <td id="L526" class="blob-num js-line-number" data-line-number="526"></td>
        <td id="LC526" class="blob-code blob-code-inner js-file-line">(<span class="pl-k">defun</span> <span class="pl-en">cl-cddadr</span> (x)</td>
      </tr>
      <tr>
        <td id="L527" class="blob-num js-line-number" data-line-number="527"></td>
        <td id="LC527" class="blob-code blob-code-inner js-file-line">  <span class="pl-s"><span class="pl-pds">&quot;</span>Return the `cdr&#39; of the `cdr&#39; of the `car&#39; of the `cdr&#39; of X.<span class="pl-pds">&quot;</span></span></td>
      </tr>
      <tr>
        <td id="L528" class="blob-num js-line-number" data-line-number="528"></td>
        <td id="LC528" class="blob-code blob-code-inner js-file-line">  (declare (compiler-macro internal--compiler-macro-cXXr))</td>
      </tr>
      <tr>
        <td id="L529" class="blob-num js-line-number" data-line-number="529"></td>
        <td id="LC529" class="blob-code blob-code-inner js-file-line">  (<span class="pl-c1">cdr</span> (<span class="pl-c1">cdr</span> (<span class="pl-c1">car</span> (<span class="pl-c1">cdr</span> x)))))</td>
      </tr>
      <tr>
        <td id="L530" class="blob-num js-line-number" data-line-number="530"></td>
        <td id="LC530" class="blob-code blob-code-inner js-file-line">
</td>
      </tr>
      <tr>
        <td id="L531" class="blob-num js-line-number" data-line-number="531"></td>
        <td id="LC531" class="blob-code blob-code-inner js-file-line">(<span class="pl-k">defun</span> <span class="pl-en">cl-cdddar</span> (x)</td>
      </tr>
      <tr>
        <td id="L532" class="blob-num js-line-number" data-line-number="532"></td>
        <td id="LC532" class="blob-code blob-code-inner js-file-line">  <span class="pl-s"><span class="pl-pds">&quot;</span>Return the `cdr&#39; of the `cdr&#39; of the `cdr&#39; of the `car&#39; of X.<span class="pl-pds">&quot;</span></span></td>
      </tr>
      <tr>
        <td id="L533" class="blob-num js-line-number" data-line-number="533"></td>
        <td id="LC533" class="blob-code blob-code-inner js-file-line">  (declare (compiler-macro internal--compiler-macro-cXXr))</td>
      </tr>
      <tr>
        <td id="L534" class="blob-num js-line-number" data-line-number="534"></td>
        <td id="LC534" class="blob-code blob-code-inner js-file-line">  (<span class="pl-c1">cdr</span> (<span class="pl-c1">cdr</span> (<span class="pl-c1">cdr</span> (<span class="pl-c1">car</span> x)))))</td>
      </tr>
      <tr>
        <td id="L535" class="blob-num js-line-number" data-line-number="535"></td>
        <td id="LC535" class="blob-code blob-code-inner js-file-line">
</td>
      </tr>
      <tr>
        <td id="L536" class="blob-num js-line-number" data-line-number="536"></td>
        <td id="LC536" class="blob-code blob-code-inner js-file-line">(<span class="pl-k">defun</span> <span class="pl-en">cl-cddddr</span> (x)</td>
      </tr>
      <tr>
        <td id="L537" class="blob-num js-line-number" data-line-number="537"></td>
        <td id="LC537" class="blob-code blob-code-inner js-file-line">  <span class="pl-s"><span class="pl-pds">&quot;</span>Return the `cdr&#39; of the `cdr&#39; of the `cdr&#39; of the `cdr&#39; of X.<span class="pl-pds">&quot;</span></span></td>
      </tr>
      <tr>
        <td id="L538" class="blob-num js-line-number" data-line-number="538"></td>
        <td id="LC538" class="blob-code blob-code-inner js-file-line">  (declare (compiler-macro internal--compiler-macro-cXXr))</td>
      </tr>
      <tr>
        <td id="L539" class="blob-num js-line-number" data-line-number="539"></td>
        <td id="LC539" class="blob-code blob-code-inner js-file-line">  (<span class="pl-c1">cdr</span> (<span class="pl-c1">cdr</span> (<span class="pl-c1">cdr</span> (<span class="pl-c1">cdr</span> x)))))</td>
      </tr>
      <tr>
        <td id="L540" class="blob-num js-line-number" data-line-number="540"></td>
        <td id="LC540" class="blob-code blob-code-inner js-file-line">
</td>
      </tr>
      <tr>
        <td id="L541" class="blob-num js-line-number" data-line-number="541"></td>
        <td id="LC541" class="blob-code blob-code-inner js-file-line"><span class="pl-c">;;(defun last* (x &amp;optional n)</span></td>
      </tr>
      <tr>
        <td id="L542" class="blob-num js-line-number" data-line-number="542"></td>
        <td id="LC542" class="blob-code blob-code-inner js-file-line"><span class="pl-c">;;  &quot;Returns the last link in the list LIST.</span></td>
      </tr>
      <tr>
        <td id="L543" class="blob-num js-line-number" data-line-number="543"></td>
        <td id="LC543" class="blob-code blob-code-inner js-file-line"><span class="pl-c">;;With optional argument N, returns Nth-to-last link (default 1).&quot;</span></td>
      </tr>
      <tr>
        <td id="L544" class="blob-num js-line-number" data-line-number="544"></td>
        <td id="LC544" class="blob-code blob-code-inner js-file-line"><span class="pl-c">;;  (if n</span></td>
      </tr>
      <tr>
        <td id="L545" class="blob-num js-line-number" data-line-number="545"></td>
        <td id="LC545" class="blob-code blob-code-inner js-file-line"><span class="pl-c">;;      (let ((m 0) (p x))</span></td>
      </tr>
      <tr>
        <td id="L546" class="blob-num js-line-number" data-line-number="546"></td>
        <td id="LC546" class="blob-code blob-code-inner js-file-line"><span class="pl-c">;;	(while (consp p) (cl-incf m) (pop p))</span></td>
      </tr>
      <tr>
        <td id="L547" class="blob-num js-line-number" data-line-number="547"></td>
        <td id="LC547" class="blob-code blob-code-inner js-file-line"><span class="pl-c">;;	(if (&lt;= n 0) p</span></td>
      </tr>
      <tr>
        <td id="L548" class="blob-num js-line-number" data-line-number="548"></td>
        <td id="LC548" class="blob-code blob-code-inner js-file-line"><span class="pl-c">;;	  (if (&lt; n m) (nthcdr (- m n) x) x)))</span></td>
      </tr>
      <tr>
        <td id="L549" class="blob-num js-line-number" data-line-number="549"></td>
        <td id="LC549" class="blob-code blob-code-inner js-file-line"><span class="pl-c">;;    (while (consp (cdr x)) (pop x))</span></td>
      </tr>
      <tr>
        <td id="L550" class="blob-num js-line-number" data-line-number="550"></td>
        <td id="LC550" class="blob-code blob-code-inner js-file-line"><span class="pl-c">;;    x))</span></td>
      </tr>
      <tr>
        <td id="L551" class="blob-num js-line-number" data-line-number="551"></td>
        <td id="LC551" class="blob-code blob-code-inner js-file-line">
</td>
      </tr>
      <tr>
        <td id="L552" class="blob-num js-line-number" data-line-number="552"></td>
        <td id="LC552" class="blob-code blob-code-inner js-file-line">(<span class="pl-k">defun</span> <span class="pl-en">cl-list</span>* (arg &amp;rest rest)</td>
      </tr>
      <tr>
        <td id="L553" class="blob-num js-line-number" data-line-number="553"></td>
        <td id="LC553" class="blob-code blob-code-inner js-file-line">  <span class="pl-s"><span class="pl-pds">&quot;</span>Return a new list with specified ARGs as elements, consed to last ARG.</span></td>
      </tr>
      <tr>
        <td id="L554" class="blob-num js-line-number" data-line-number="554"></td>
        <td id="LC554" class="blob-code blob-code-inner js-file-line"><span class="pl-s">Thus, `(cl-list* A B C D)&#39; is equivalent to `(nconc (list A B C) D)&#39;, or to</span></td>
      </tr>
      <tr>
        <td id="L555" class="blob-num js-line-number" data-line-number="555"></td>
        <td id="LC555" class="blob-code blob-code-inner js-file-line"><span class="pl-s">`(cons A (cons B (cons C D)))&#39;.</span></td>
      </tr>
      <tr>
        <td id="L556" class="blob-num js-line-number" data-line-number="556"></td>
        <td id="LC556" class="blob-code blob-code-inner js-file-line"><span class="pl-s"><span class="pl-cce">\n</span>(fn ARG...)<span class="pl-pds">&quot;</span></span></td>
      </tr>
      <tr>
        <td id="L557" class="blob-num js-line-number" data-line-number="557"></td>
        <td id="LC557" class="blob-code blob-code-inner js-file-line">  (declare (compiler-macro cl--compiler-macro-list*))</td>
      </tr>
      <tr>
        <td id="L558" class="blob-num js-line-number" data-line-number="558"></td>
        <td id="LC558" class="blob-code blob-code-inner js-file-line">  (<span class="pl-c1">cond</span> ((not rest) arg)</td>
      </tr>
      <tr>
        <td id="L559" class="blob-num js-line-number" data-line-number="559"></td>
        <td id="LC559" class="blob-code blob-code-inner js-file-line">	((not (<span class="pl-c1">cdr</span> rest)) (<span class="pl-c1">cons</span> arg (<span class="pl-c1">car</span> rest)))</td>
      </tr>
      <tr>
        <td id="L560" class="blob-num js-line-number" data-line-number="560"></td>
        <td id="LC560" class="blob-code blob-code-inner js-file-line">	(<span class="pl-c1">t</span> (<span class="pl-k">let</span>* ((n (length rest))</td>
      </tr>
      <tr>
        <td id="L561" class="blob-num js-line-number" data-line-number="561"></td>
        <td id="LC561" class="blob-code blob-code-inner js-file-line">		  (copy (copy-sequence rest))</td>
      </tr>
      <tr>
        <td id="L562" class="blob-num js-line-number" data-line-number="562"></td>
        <td id="LC562" class="blob-code blob-code-inner js-file-line">		  (last (nthcdr (- n <span class="pl-c1">2</span>) copy)))</td>
      </tr>
      <tr>
        <td id="L563" class="blob-num js-line-number" data-line-number="563"></td>
        <td id="LC563" class="blob-code blob-code-inner js-file-line">	     (setcdr last (<span class="pl-c1">car</span> (<span class="pl-c1">cdr</span> last)))</td>
      </tr>
      <tr>
        <td id="L564" class="blob-num js-line-number" data-line-number="564"></td>
        <td id="LC564" class="blob-code blob-code-inner js-file-line">	     (<span class="pl-c1">cons</span> arg copy)))))</td>
      </tr>
      <tr>
        <td id="L565" class="blob-num js-line-number" data-line-number="565"></td>
        <td id="LC565" class="blob-code blob-code-inner js-file-line">
</td>
      </tr>
      <tr>
        <td id="L566" class="blob-num js-line-number" data-line-number="566"></td>
        <td id="LC566" class="blob-code blob-code-inner js-file-line">(<span class="pl-k">defun</span> <span class="pl-en">cl-ldiff</span> (<span class="pl-c1">list</span> sublist)</td>
      </tr>
      <tr>
        <td id="L567" class="blob-num js-line-number" data-line-number="567"></td>
        <td id="LC567" class="blob-code blob-code-inner js-file-line">  <span class="pl-s"><span class="pl-pds">&quot;</span>Return a copy of LIST with the tail SUBLIST removed.<span class="pl-pds">&quot;</span></span></td>
      </tr>
      <tr>
        <td id="L568" class="blob-num js-line-number" data-line-number="568"></td>
        <td id="LC568" class="blob-code blob-code-inner js-file-line">  (<span class="pl-k">let</span> ((res <span class="pl-c1">nil</span>))</td>
      </tr>
      <tr>
        <td id="L569" class="blob-num js-line-number" data-line-number="569"></td>
        <td id="LC569" class="blob-code blob-code-inner js-file-line">    (while (<span class="pl-k">and</span> (consp <span class="pl-c1">list</span>) (not (<span class="pl-k">eq</span> <span class="pl-c1">list</span> sublist)))</td>
      </tr>
      <tr>
        <td id="L570" class="blob-num js-line-number" data-line-number="570"></td>
        <td id="LC570" class="blob-code blob-code-inner js-file-line">      (push (pop <span class="pl-c1">list</span>) res))</td>
      </tr>
      <tr>
        <td id="L571" class="blob-num js-line-number" data-line-number="571"></td>
        <td id="LC571" class="blob-code blob-code-inner js-file-line">    (nreverse res)))</td>
      </tr>
      <tr>
        <td id="L572" class="blob-num js-line-number" data-line-number="572"></td>
        <td id="LC572" class="blob-code blob-code-inner js-file-line">
</td>
      </tr>
      <tr>
        <td id="L573" class="blob-num js-line-number" data-line-number="573"></td>
        <td id="LC573" class="blob-code blob-code-inner js-file-line">(<span class="pl-k">defun</span> <span class="pl-en">cl-copy-list</span> (<span class="pl-c1">list</span>)</td>
      </tr>
      <tr>
        <td id="L574" class="blob-num js-line-number" data-line-number="574"></td>
        <td id="LC574" class="blob-code blob-code-inner js-file-line">  <span class="pl-s"><span class="pl-pds">&quot;</span>Return a copy of LIST, which may be a dotted list.</span></td>
      </tr>
      <tr>
        <td id="L575" class="blob-num js-line-number" data-line-number="575"></td>
        <td id="LC575" class="blob-code blob-code-inner js-file-line"><span class="pl-s">The elements of LIST are not copied, just the list structure itself.<span class="pl-pds">&quot;</span></span></td>
      </tr>
      <tr>
        <td id="L576" class="blob-num js-line-number" data-line-number="576"></td>
        <td id="LC576" class="blob-code blob-code-inner js-file-line">  (<span class="pl-k">if</span> (consp <span class="pl-c1">list</span>)</td>
      </tr>
      <tr>
        <td id="L577" class="blob-num js-line-number" data-line-number="577"></td>
        <td id="LC577" class="blob-code blob-code-inner js-file-line">      (<span class="pl-k">let</span> ((res <span class="pl-c1">nil</span>))</td>
      </tr>
      <tr>
        <td id="L578" class="blob-num js-line-number" data-line-number="578"></td>
        <td id="LC578" class="blob-code blob-code-inner js-file-line">	(while (consp <span class="pl-c1">list</span>) (push (pop <span class="pl-c1">list</span>) res))</td>
      </tr>
      <tr>
        <td id="L579" class="blob-num js-line-number" data-line-number="579"></td>
        <td id="LC579" class="blob-code blob-code-inner js-file-line">	(prog1 (nreverse res) (setcdr res <span class="pl-c1">list</span>)))</td>
      </tr>
      <tr>
        <td id="L580" class="blob-num js-line-number" data-line-number="580"></td>
        <td id="LC580" class="blob-code blob-code-inner js-file-line">    (<span class="pl-c1">car</span> <span class="pl-c1">list</span>)))</td>
      </tr>
      <tr>
        <td id="L581" class="blob-num js-line-number" data-line-number="581"></td>
        <td id="LC581" class="blob-code blob-code-inner js-file-line">
</td>
      </tr>
      <tr>
        <td id="L582" class="blob-num js-line-number" data-line-number="582"></td>
        <td id="LC582" class="blob-code blob-code-inner js-file-line"><span class="pl-c">;; Autoloaded, but we have not loaded cl-loaddefs yet.</span></td>
      </tr>
      <tr>
        <td id="L583" class="blob-num js-line-number" data-line-number="583"></td>
        <td id="LC583" class="blob-code blob-code-inner js-file-line">(declare-function cl-floor <span class="pl-s"><span class="pl-pds">&quot;</span>cl-extra<span class="pl-pds">&quot;</span></span> (x &amp;optional y))</td>
      </tr>
      <tr>
        <td id="L584" class="blob-num js-line-number" data-line-number="584"></td>
        <td id="LC584" class="blob-code blob-code-inner js-file-line">(declare-function cl-ceiling <span class="pl-s"><span class="pl-pds">&quot;</span>cl-extra<span class="pl-pds">&quot;</span></span> (x &amp;optional y))</td>
      </tr>
      <tr>
        <td id="L585" class="blob-num js-line-number" data-line-number="585"></td>
        <td id="LC585" class="blob-code blob-code-inner js-file-line">(declare-function cl-truncate <span class="pl-s"><span class="pl-pds">&quot;</span>cl-extra<span class="pl-pds">&quot;</span></span> (x &amp;optional y))</td>
      </tr>
      <tr>
        <td id="L586" class="blob-num js-line-number" data-line-number="586"></td>
        <td id="LC586" class="blob-code blob-code-inner js-file-line">(declare-function cl-round <span class="pl-s"><span class="pl-pds">&quot;</span>cl-extra<span class="pl-pds">&quot;</span></span> (x &amp;optional y))</td>
      </tr>
      <tr>
        <td id="L587" class="blob-num js-line-number" data-line-number="587"></td>
        <td id="LC587" class="blob-code blob-code-inner js-file-line">(declare-function cl-mod <span class="pl-s"><span class="pl-pds">&quot;</span>cl-extra<span class="pl-pds">&quot;</span></span> (x y))</td>
      </tr>
      <tr>
        <td id="L588" class="blob-num js-line-number" data-line-number="588"></td>
        <td id="LC588" class="blob-code blob-code-inner js-file-line">
</td>
      </tr>
      <tr>
        <td id="L589" class="blob-num js-line-number" data-line-number="589"></td>
        <td id="LC589" class="blob-code blob-code-inner js-file-line">(<span class="pl-k">defun</span> <span class="pl-en">cl-adjoin</span> (cl-item cl-list &amp;rest cl-keys)</td>
      </tr>
      <tr>
        <td id="L590" class="blob-num js-line-number" data-line-number="590"></td>
        <td id="LC590" class="blob-code blob-code-inner js-file-line">  <span class="pl-s"><span class="pl-pds">&quot;</span>Return ITEM consed onto the front of LIST only if it&#39;s not already there.</span></td>
      </tr>
      <tr>
        <td id="L591" class="blob-num js-line-number" data-line-number="591"></td>
        <td id="LC591" class="blob-code blob-code-inner js-file-line"><span class="pl-s">Otherwise, return LIST unmodified.</span></td>
      </tr>
      <tr>
        <td id="L592" class="blob-num js-line-number" data-line-number="592"></td>
        <td id="LC592" class="blob-code blob-code-inner js-file-line"><span class="pl-s"><span class="pl-cce">\n</span>Keywords supported:  :test :test-not :key</span></td>
      </tr>
      <tr>
        <td id="L593" class="blob-num js-line-number" data-line-number="593"></td>
        <td id="LC593" class="blob-code blob-code-inner js-file-line"><span class="pl-s"><span class="pl-cce">\n</span>(fn ITEM LIST [KEYWORD VALUE]...)<span class="pl-pds">&quot;</span></span></td>
      </tr>
      <tr>
        <td id="L594" class="blob-num js-line-number" data-line-number="594"></td>
        <td id="LC594" class="blob-code blob-code-inner js-file-line">  (declare (compiler-macro cl--compiler-macro-adjoin))</td>
      </tr>
      <tr>
        <td id="L595" class="blob-num js-line-number" data-line-number="595"></td>
        <td id="LC595" class="blob-code blob-code-inner js-file-line">  (<span class="pl-c1">cond</span> ((<span class="pl-k">or</span> (equal cl-keys &#39;(:test <span class="pl-k">eq</span>))</td>
      </tr>
      <tr>
        <td id="L596" class="blob-num js-line-number" data-line-number="596"></td>
        <td id="LC596" class="blob-code blob-code-inner js-file-line">	     (<span class="pl-k">and</span> (<span class="pl-c1">null</span> cl-keys) (not (numberp cl-item))))</td>
      </tr>
      <tr>
        <td id="L597" class="blob-num js-line-number" data-line-number="597"></td>
        <td id="LC597" class="blob-code blob-code-inner js-file-line">	 (<span class="pl-k">if</span> (memq cl-item cl-list) cl-list (<span class="pl-c1">cons</span> cl-item cl-list)))</td>
      </tr>
      <tr>
        <td id="L598" class="blob-num js-line-number" data-line-number="598"></td>
        <td id="LC598" class="blob-code blob-code-inner js-file-line">	((<span class="pl-k">or</span> (equal cl-keys &#39;(:test equal)) (<span class="pl-c1">null</span> cl-keys))</td>
      </tr>
      <tr>
        <td id="L599" class="blob-num js-line-number" data-line-number="599"></td>
        <td id="LC599" class="blob-code blob-code-inner js-file-line">	 (<span class="pl-k">if</span> (member cl-item cl-list) cl-list (<span class="pl-c1">cons</span> cl-item cl-list)))</td>
      </tr>
      <tr>
        <td id="L600" class="blob-num js-line-number" data-line-number="600"></td>
        <td id="LC600" class="blob-code blob-code-inner js-file-line">	(<span class="pl-c1">t</span> (apply &#39;cl--adjoin cl-item cl-list cl-keys))))</td>
      </tr>
      <tr>
        <td id="L601" class="blob-num js-line-number" data-line-number="601"></td>
        <td id="LC601" class="blob-code blob-code-inner js-file-line">
</td>
      </tr>
      <tr>
        <td id="L602" class="blob-num js-line-number" data-line-number="602"></td>
        <td id="LC602" class="blob-code blob-code-inner js-file-line">(<span class="pl-k">defun</span> <span class="pl-en">cl-subst</span> (cl-new cl-old cl-tree &amp;rest cl-keys)</td>
      </tr>
      <tr>
        <td id="L603" class="blob-num js-line-number" data-line-number="603"></td>
        <td id="LC603" class="blob-code blob-code-inner js-file-line">  <span class="pl-s"><span class="pl-pds">&quot;</span>Substitute NEW for OLD everywhere in TREE (non-destructively).</span></td>
      </tr>
      <tr>
        <td id="L604" class="blob-num js-line-number" data-line-number="604"></td>
        <td id="LC604" class="blob-code blob-code-inner js-file-line"><span class="pl-s">Return a copy of TREE with all elements `eql&#39; to OLD replaced by NEW.</span></td>
      </tr>
      <tr>
        <td id="L605" class="blob-num js-line-number" data-line-number="605"></td>
        <td id="LC605" class="blob-code blob-code-inner js-file-line"><span class="pl-s"><span class="pl-cce">\n</span>Keywords supported:  :test :test-not :key</span></td>
      </tr>
      <tr>
        <td id="L606" class="blob-num js-line-number" data-line-number="606"></td>
        <td id="LC606" class="blob-code blob-code-inner js-file-line"><span class="pl-s"><span class="pl-cce">\n</span>(fn NEW OLD TREE [KEYWORD VALUE]...)<span class="pl-pds">&quot;</span></span></td>
      </tr>
      <tr>
        <td id="L607" class="blob-num js-line-number" data-line-number="607"></td>
        <td id="LC607" class="blob-code blob-code-inner js-file-line">  (<span class="pl-k">if</span> (<span class="pl-k">or</span> cl-keys (<span class="pl-k">and</span> (numberp cl-old) (not (integerp cl-old))))</td>
      </tr>
      <tr>
        <td id="L608" class="blob-num js-line-number" data-line-number="608"></td>
        <td id="LC608" class="blob-code blob-code-inner js-file-line">      (apply &#39;cl-sublis (<span class="pl-c1">list</span> (<span class="pl-c1">cons</span> cl-old cl-new)) cl-tree cl-keys)</td>
      </tr>
      <tr>
        <td id="L609" class="blob-num js-line-number" data-line-number="609"></td>
        <td id="LC609" class="blob-code blob-code-inner js-file-line">    (cl--<span class="pl-k">do</span>-subst cl-new cl-old cl-tree)))</td>
      </tr>
      <tr>
        <td id="L610" class="blob-num js-line-number" data-line-number="610"></td>
        <td id="LC610" class="blob-code blob-code-inner js-file-line">
</td>
      </tr>
      <tr>
        <td id="L611" class="blob-num js-line-number" data-line-number="611"></td>
        <td id="LC611" class="blob-code blob-code-inner js-file-line">(<span class="pl-k">defun</span> <span class="pl-en">cl--do-subst</span> (cl-new cl-old cl-tree)</td>
      </tr>
      <tr>
        <td id="L612" class="blob-num js-line-number" data-line-number="612"></td>
        <td id="LC612" class="blob-code blob-code-inner js-file-line">  (<span class="pl-c1">cond</span> ((<span class="pl-k">eq</span> cl-tree cl-old) cl-new)</td>
      </tr>
      <tr>
        <td id="L613" class="blob-num js-line-number" data-line-number="613"></td>
        <td id="LC613" class="blob-code blob-code-inner js-file-line">	((consp cl-tree)</td>
      </tr>
      <tr>
        <td id="L614" class="blob-num js-line-number" data-line-number="614"></td>
        <td id="LC614" class="blob-code blob-code-inner js-file-line">	 (<span class="pl-k">let</span> ((a (cl--<span class="pl-k">do</span>-subst cl-new cl-old (<span class="pl-c1">car</span> cl-tree)))</td>
      </tr>
      <tr>
        <td id="L615" class="blob-num js-line-number" data-line-number="615"></td>
        <td id="LC615" class="blob-code blob-code-inner js-file-line">	       (d (cl--<span class="pl-k">do</span>-subst cl-new cl-old (<span class="pl-c1">cdr</span> cl-tree))))</td>
      </tr>
      <tr>
        <td id="L616" class="blob-num js-line-number" data-line-number="616"></td>
        <td id="LC616" class="blob-code blob-code-inner js-file-line">	   (<span class="pl-k">if</span> (<span class="pl-k">and</span> (<span class="pl-k">eq</span> a (<span class="pl-c1">car</span> cl-tree)) (<span class="pl-k">eq</span> d (<span class="pl-c1">cdr</span> cl-tree)))</td>
      </tr>
      <tr>
        <td id="L617" class="blob-num js-line-number" data-line-number="617"></td>
        <td id="LC617" class="blob-code blob-code-inner js-file-line">	       cl-tree (<span class="pl-c1">cons</span> a d))))</td>
      </tr>
      <tr>
        <td id="L618" class="blob-num js-line-number" data-line-number="618"></td>
        <td id="LC618" class="blob-code blob-code-inner js-file-line">	(<span class="pl-c1">t</span> cl-tree)))</td>
      </tr>
      <tr>
        <td id="L619" class="blob-num js-line-number" data-line-number="619"></td>
        <td id="LC619" class="blob-code blob-code-inner js-file-line">
</td>
      </tr>
      <tr>
        <td id="L620" class="blob-num js-line-number" data-line-number="620"></td>
        <td id="LC620" class="blob-code blob-code-inner js-file-line">(<span class="pl-k">defun</span> <span class="pl-en">cl-acons</span> (key value alist)</td>
      </tr>
      <tr>
        <td id="L621" class="blob-num js-line-number" data-line-number="621"></td>
        <td id="LC621" class="blob-code blob-code-inner js-file-line">  <span class="pl-s"><span class="pl-pds">&quot;</span>Add KEY and VALUE to ALIST.</span></td>
      </tr>
      <tr>
        <td id="L622" class="blob-num js-line-number" data-line-number="622"></td>
        <td id="LC622" class="blob-code blob-code-inner js-file-line"><span class="pl-s">Return a new list with (cons KEY VALUE) as car and ALIST as cdr.<span class="pl-pds">&quot;</span></span></td>
      </tr>
      <tr>
        <td id="L623" class="blob-num js-line-number" data-line-number="623"></td>
        <td id="LC623" class="blob-code blob-code-inner js-file-line">  (<span class="pl-c1">cons</span> (<span class="pl-c1">cons</span> key value) alist))</td>
      </tr>
      <tr>
        <td id="L624" class="blob-num js-line-number" data-line-number="624"></td>
        <td id="LC624" class="blob-code blob-code-inner js-file-line">
</td>
      </tr>
      <tr>
        <td id="L625" class="blob-num js-line-number" data-line-number="625"></td>
        <td id="LC625" class="blob-code blob-code-inner js-file-line">(<span class="pl-k">defun</span> <span class="pl-en">cl-pairlis</span> (keys values &amp;optional alist)</td>
      </tr>
      <tr>
        <td id="L626" class="blob-num js-line-number" data-line-number="626"></td>
        <td id="LC626" class="blob-code blob-code-inner js-file-line">  <span class="pl-s"><span class="pl-pds">&quot;</span>Make an alist from KEYS and VALUES.</span></td>
      </tr>
      <tr>
        <td id="L627" class="blob-num js-line-number" data-line-number="627"></td>
        <td id="LC627" class="blob-code blob-code-inner js-file-line"><span class="pl-s">Return a new alist composed by associating KEYS to corresponding VALUES;</span></td>
      </tr>
      <tr>
        <td id="L628" class="blob-num js-line-number" data-line-number="628"></td>
        <td id="LC628" class="blob-code blob-code-inner js-file-line"><span class="pl-s">the process stops as soon as KEYS or VALUES run out.</span></td>
      </tr>
      <tr>
        <td id="L629" class="blob-num js-line-number" data-line-number="629"></td>
        <td id="LC629" class="blob-code blob-code-inner js-file-line"><span class="pl-s">If ALIST is non-nil, the new pairs are prepended to it.<span class="pl-pds">&quot;</span></span></td>
      </tr>
      <tr>
        <td id="L630" class="blob-num js-line-number" data-line-number="630"></td>
        <td id="LC630" class="blob-code blob-code-inner js-file-line">  (nconc (cl-mapcar &#39;<span class="pl-c1">cons</span> keys values) alist))</td>
      </tr>
      <tr>
        <td id="L631" class="blob-num js-line-number" data-line-number="631"></td>
        <td id="LC631" class="blob-code blob-code-inner js-file-line">
</td>
      </tr>
      <tr>
        <td id="L632" class="blob-num js-line-number" data-line-number="632"></td>
        <td id="LC632" class="blob-code blob-code-inner js-file-line"><span class="pl-c">;;; Generalized variables.</span></td>
      </tr>
      <tr>
        <td id="L633" class="blob-num js-line-number" data-line-number="633"></td>
        <td id="LC633" class="blob-code blob-code-inner js-file-line">
</td>
      </tr>
      <tr>
        <td id="L634" class="blob-num js-line-number" data-line-number="634"></td>
        <td id="LC634" class="blob-code blob-code-inner js-file-line"><span class="pl-c">;; These used to be in cl-macs.el since all macros that use them (like setf)</span></td>
      </tr>
      <tr>
        <td id="L635" class="blob-num js-line-number" data-line-number="635"></td>
        <td id="LC635" class="blob-code blob-code-inner js-file-line"><span class="pl-c">;; were autoloaded from cl-macs.el.  But now that setf, push, and pop are in</span></td>
      </tr>
      <tr>
        <td id="L636" class="blob-num js-line-number" data-line-number="636"></td>
        <td id="LC636" class="blob-code blob-code-inner js-file-line"><span class="pl-c">;; core Elisp, they need to either be right here or be autoloaded via</span></td>
      </tr>
      <tr>
        <td id="L637" class="blob-num js-line-number" data-line-number="637"></td>
        <td id="LC637" class="blob-code blob-code-inner js-file-line"><span class="pl-c">;; cl-loaddefs.el, which is more trouble than it is worth.</span></td>
      </tr>
      <tr>
        <td id="L638" class="blob-num js-line-number" data-line-number="638"></td>
        <td id="LC638" class="blob-code blob-code-inner js-file-line">
</td>
      </tr>
      <tr>
        <td id="L639" class="blob-num js-line-number" data-line-number="639"></td>
        <td id="LC639" class="blob-code blob-code-inner js-file-line"><span class="pl-c">;; Some more Emacs-related place types.</span></td>
      </tr>
      <tr>
        <td id="L640" class="blob-num js-line-number" data-line-number="640"></td>
        <td id="LC640" class="blob-code blob-code-inner js-file-line">(gv-define-simple-setter buffer-file-name set-visited-file-name <span class="pl-c1">t</span>)</td>
      </tr>
      <tr>
        <td id="L641" class="blob-num js-line-number" data-line-number="641"></td>
        <td id="LC641" class="blob-code blob-code-inner js-file-line">(gv-define-setter buffer-modified-p (flag &amp;optional buf)</td>
      </tr>
      <tr>
        <td id="L642" class="blob-num js-line-number" data-line-number="642"></td>
        <td id="LC642" class="blob-code blob-code-inner js-file-line">  `(with-current-buffer ,buf</td>
      </tr>
      <tr>
        <td id="L643" class="blob-num js-line-number" data-line-number="643"></td>
        <td id="LC643" class="blob-code blob-code-inner js-file-line">     (set-buffer-modified-p ,flag)))</td>
      </tr>
      <tr>
        <td id="L644" class="blob-num js-line-number" data-line-number="644"></td>
        <td id="LC644" class="blob-code blob-code-inner js-file-line">(gv-define-simple-setter buffer-name rename-buffer <span class="pl-c1">t</span>)</td>
      </tr>
      <tr>
        <td id="L645" class="blob-num js-line-number" data-line-number="645"></td>
        <td id="LC645" class="blob-code blob-code-inner js-file-line">(gv-define-setter buffer-string (store)</td>
      </tr>
      <tr>
        <td id="L646" class="blob-num js-line-number" data-line-number="646"></td>
        <td id="LC646" class="blob-code blob-code-inner js-file-line">  `(insert (prog1 ,store (erase-buffer))))</td>
      </tr>
      <tr>
        <td id="L647" class="blob-num js-line-number" data-line-number="647"></td>
        <td id="LC647" class="blob-code blob-code-inner js-file-line">(gv-define-simple-setter buffer-substring cl--set-buffer-substring)</td>
      </tr>
      <tr>
        <td id="L648" class="blob-num js-line-number" data-line-number="648"></td>
        <td id="LC648" class="blob-code blob-code-inner js-file-line">(gv-define-simple-setter current-buffer set-buffer)</td>
      </tr>
      <tr>
        <td id="L649" class="blob-num js-line-number" data-line-number="649"></td>
        <td id="LC649" class="blob-code blob-code-inner js-file-line">(gv-define-simple-setter current-column move-to-column <span class="pl-c1">t</span>)</td>
      </tr>
      <tr>
        <td id="L650" class="blob-num js-line-number" data-line-number="650"></td>
        <td id="LC650" class="blob-code blob-code-inner js-file-line">(gv-define-simple-setter current-global-map use-global-map <span class="pl-c1">t</span>)</td>
      </tr>
      <tr>
        <td id="L651" class="blob-num js-line-number" data-line-number="651"></td>
        <td id="LC651" class="blob-code blob-code-inner js-file-line">(gv-define-setter current-input-mode (store)</td>
      </tr>
      <tr>
        <td id="L652" class="blob-num js-line-number" data-line-number="652"></td>
        <td id="LC652" class="blob-code blob-code-inner js-file-line">  `(<span class="pl-c1">progn</span> (apply <span class="pl-c1">#&#39;set-input-mode</span> ,store) ,store))</td>
      </tr>
      <tr>
        <td id="L653" class="blob-num js-line-number" data-line-number="653"></td>
        <td id="LC653" class="blob-code blob-code-inner js-file-line">(gv-define-simple-setter current-local-map use-local-map <span class="pl-c1">t</span>)</td>
      </tr>
      <tr>
        <td id="L654" class="blob-num js-line-number" data-line-number="654"></td>
        <td id="LC654" class="blob-code blob-code-inner js-file-line">(gv-define-simple-setter current-window-configuration</td>
      </tr>
      <tr>
        <td id="L655" class="blob-num js-line-number" data-line-number="655"></td>
        <td id="LC655" class="blob-code blob-code-inner js-file-line">                         set-window-configuration <span class="pl-c1">t</span>)</td>
      </tr>
      <tr>
        <td id="L656" class="blob-num js-line-number" data-line-number="656"></td>
        <td id="LC656" class="blob-code blob-code-inner js-file-line">(gv-define-simple-setter default-file-modes set-default-file-modes <span class="pl-c1">t</span>)</td>
      </tr>
      <tr>
        <td id="L657" class="blob-num js-line-number" data-line-number="657"></td>
        <td id="LC657" class="blob-code blob-code-inner js-file-line">(gv-define-simple-setter documentation-property put)</td>
      </tr>
      <tr>
        <td id="L658" class="blob-num js-line-number" data-line-number="658"></td>
        <td id="LC658" class="blob-code blob-code-inner js-file-line">(gv-define-setter face-background (x f &amp;optional s)</td>
      </tr>
      <tr>
        <td id="L659" class="blob-num js-line-number" data-line-number="659"></td>
        <td id="LC659" class="blob-code blob-code-inner js-file-line">  `(set-face-background ,f ,x ,s))</td>
      </tr>
      <tr>
        <td id="L660" class="blob-num js-line-number" data-line-number="660"></td>
        <td id="LC660" class="blob-code blob-code-inner js-file-line">(gv-define-setter face-background-pixmap (x f &amp;optional s)</td>
      </tr>
      <tr>
        <td id="L661" class="blob-num js-line-number" data-line-number="661"></td>
        <td id="LC661" class="blob-code blob-code-inner js-file-line">  `(set-face-background-pixmap ,f ,x ,s))</td>
      </tr>
      <tr>
        <td id="L662" class="blob-num js-line-number" data-line-number="662"></td>
        <td id="LC662" class="blob-code blob-code-inner js-file-line">(gv-define-setter face-font (x f &amp;optional s) `(set-face-font ,f ,x ,s))</td>
      </tr>
      <tr>
        <td id="L663" class="blob-num js-line-number" data-line-number="663"></td>
        <td id="LC663" class="blob-code blob-code-inner js-file-line">(gv-define-setter face-foreground (x f &amp;optional s)</td>
      </tr>
      <tr>
        <td id="L664" class="blob-num js-line-number" data-line-number="664"></td>
        <td id="LC664" class="blob-code blob-code-inner js-file-line">  `(set-face-foreground ,f ,x ,s))</td>
      </tr>
      <tr>
        <td id="L665" class="blob-num js-line-number" data-line-number="665"></td>
        <td id="LC665" class="blob-code blob-code-inner js-file-line">(gv-define-setter face-underline-p (x f &amp;optional s)</td>
      </tr>
      <tr>
        <td id="L666" class="blob-num js-line-number" data-line-number="666"></td>
        <td id="LC666" class="blob-code blob-code-inner js-file-line">  `(set-face-underline ,f ,x ,s))</td>
      </tr>
      <tr>
        <td id="L667" class="blob-num js-line-number" data-line-number="667"></td>
        <td id="LC667" class="blob-code blob-code-inner js-file-line">(gv-define-simple-setter file-modes set-file-modes <span class="pl-c1">t</span>)</td>
      </tr>
      <tr>
        <td id="L668" class="blob-num js-line-number" data-line-number="668"></td>
        <td id="LC668" class="blob-code blob-code-inner js-file-line">(gv-define-simple-setter frame-height set-screen-height <span class="pl-c1">t</span>)</td>
      </tr>
      <tr>
        <td id="L669" class="blob-num js-line-number" data-line-number="669"></td>
        <td id="LC669" class="blob-code blob-code-inner js-file-line">(gv-define-simple-setter frame-parameters modify-frame-parameters <span class="pl-c1">t</span>)</td>
      </tr>
      <tr>
        <td id="L670" class="blob-num js-line-number" data-line-number="670"></td>
        <td id="LC670" class="blob-code blob-code-inner js-file-line">(gv-define-simple-setter frame-visible-p cl--set-frame-visible-p)</td>
      </tr>
      <tr>
        <td id="L671" class="blob-num js-line-number" data-line-number="671"></td>
        <td id="LC671" class="blob-code blob-code-inner js-file-line">(gv-define-simple-setter frame-width set-screen-width <span class="pl-c1">t</span>)</td>
      </tr>
      <tr>
        <td id="L672" class="blob-num js-line-number" data-line-number="672"></td>
        <td id="LC672" class="blob-code blob-code-inner js-file-line">(gv-define-simple-setter getenv setenv <span class="pl-c1">t</span>)</td>
      </tr>
      <tr>
        <td id="L673" class="blob-num js-line-number" data-line-number="673"></td>
        <td id="LC673" class="blob-code blob-code-inner js-file-line">(gv-define-simple-setter get-register set-register)</td>
      </tr>
      <tr>
        <td id="L674" class="blob-num js-line-number" data-line-number="674"></td>
        <td id="LC674" class="blob-code blob-code-inner js-file-line">(gv-define-simple-setter global-key-binding global-set-key)</td>
      </tr>
      <tr>
        <td id="L675" class="blob-num js-line-number" data-line-number="675"></td>
        <td id="LC675" class="blob-code blob-code-inner js-file-line">(gv-define-simple-setter local-key-binding local-set-key)</td>
      </tr>
      <tr>
        <td id="L676" class="blob-num js-line-number" data-line-number="676"></td>
        <td id="LC676" class="blob-code blob-code-inner js-file-line">(gv-define-simple-setter mark set-mark <span class="pl-c1">t</span>)</td>
      </tr>
      <tr>
        <td id="L677" class="blob-num js-line-number" data-line-number="677"></td>
        <td id="LC677" class="blob-code blob-code-inner js-file-line">(gv-define-simple-setter mark-marker set-mark <span class="pl-c1">t</span>)</td>
      </tr>
      <tr>
        <td id="L678" class="blob-num js-line-number" data-line-number="678"></td>
        <td id="LC678" class="blob-code blob-code-inner js-file-line">(gv-define-simple-setter marker-position set-marker <span class="pl-c1">t</span>)</td>
      </tr>
      <tr>
        <td id="L679" class="blob-num js-line-number" data-line-number="679"></td>
        <td id="LC679" class="blob-code blob-code-inner js-file-line">(gv-define-setter mouse-position (store scr)</td>
      </tr>
      <tr>
        <td id="L680" class="blob-num js-line-number" data-line-number="680"></td>
        <td id="LC680" class="blob-code blob-code-inner js-file-line">  `(set-mouse-position ,scr (<span class="pl-c1">car</span> ,store) (cadr ,store)</td>
      </tr>
      <tr>
        <td id="L681" class="blob-num js-line-number" data-line-number="681"></td>
        <td id="LC681" class="blob-code blob-code-inner js-file-line">                       (cddr ,store)))</td>
      </tr>
      <tr>
        <td id="L682" class="blob-num js-line-number" data-line-number="682"></td>
        <td id="LC682" class="blob-code blob-code-inner js-file-line">(gv-define-simple-setter point goto-char)</td>
      </tr>
      <tr>
        <td id="L683" class="blob-num js-line-number" data-line-number="683"></td>
        <td id="LC683" class="blob-code blob-code-inner js-file-line">(gv-define-simple-setter point-marker goto-char <span class="pl-c1">t</span>)</td>
      </tr>
      <tr>
        <td id="L684" class="blob-num js-line-number" data-line-number="684"></td>
        <td id="LC684" class="blob-code blob-code-inner js-file-line">(gv-define-setter point-max (store)</td>
      </tr>
      <tr>
        <td id="L685" class="blob-num js-line-number" data-line-number="685"></td>
        <td id="LC685" class="blob-code blob-code-inner js-file-line">  `(<span class="pl-c1">progn</span> (narrow-to-region (point-min) ,store) ,store))</td>
      </tr>
      <tr>
        <td id="L686" class="blob-num js-line-number" data-line-number="686"></td>
        <td id="LC686" class="blob-code blob-code-inner js-file-line">(gv-define-setter point-min (store)</td>
      </tr>
      <tr>
        <td id="L687" class="blob-num js-line-number" data-line-number="687"></td>
        <td id="LC687" class="blob-code blob-code-inner js-file-line">  `(<span class="pl-c1">progn</span> (narrow-to-region ,store (point-max)) ,store))</td>
      </tr>
      <tr>
        <td id="L688" class="blob-num js-line-number" data-line-number="688"></td>
        <td id="LC688" class="blob-code blob-code-inner js-file-line">(gv-define-setter read-mouse-position (store scr)</td>
      </tr>
      <tr>
        <td id="L689" class="blob-num js-line-number" data-line-number="689"></td>
        <td id="LC689" class="blob-code blob-code-inner js-file-line">  `(set-mouse-position ,scr (<span class="pl-c1">car</span> ,store) (<span class="pl-c1">cdr</span> ,store)))</td>
      </tr>
      <tr>
        <td id="L690" class="blob-num js-line-number" data-line-number="690"></td>
        <td id="LC690" class="blob-code blob-code-inner js-file-line">(gv-define-simple-setter screen-height set-screen-height <span class="pl-c1">t</span>)</td>
      </tr>
      <tr>
        <td id="L691" class="blob-num js-line-number" data-line-number="691"></td>
        <td id="LC691" class="blob-code blob-code-inner js-file-line">(gv-define-simple-setter screen-width set-screen-width <span class="pl-c1">t</span>)</td>
      </tr>
      <tr>
        <td id="L692" class="blob-num js-line-number" data-line-number="692"></td>
        <td id="LC692" class="blob-code blob-code-inner js-file-line">(gv-define-simple-setter selected-window select-window)</td>
      </tr>
      <tr>
        <td id="L693" class="blob-num js-line-number" data-line-number="693"></td>
        <td id="LC693" class="blob-code blob-code-inner js-file-line">(gv-define-simple-setter selected-screen select-screen)</td>
      </tr>
      <tr>
        <td id="L694" class="blob-num js-line-number" data-line-number="694"></td>
        <td id="LC694" class="blob-code blob-code-inner js-file-line">(gv-define-simple-setter selected-frame select-frame)</td>
      </tr>
      <tr>
        <td id="L695" class="blob-num js-line-number" data-line-number="695"></td>
        <td id="LC695" class="blob-code blob-code-inner js-file-line">(gv-define-simple-setter standard-<span class="pl-k">case</span>-table set-standard-<span class="pl-k">case</span>-table)</td>
      </tr>
      <tr>
        <td id="L696" class="blob-num js-line-number" data-line-number="696"></td>
        <td id="LC696" class="blob-code blob-code-inner js-file-line">(gv-define-simple-setter syntax-table set-syntax-table)</td>
      </tr>
      <tr>
        <td id="L697" class="blob-num js-line-number" data-line-number="697"></td>
        <td id="LC697" class="blob-code blob-code-inner js-file-line">(gv-define-simple-setter visited-file-modtime set-visited-file-modtime <span class="pl-c1">t</span>)</td>
      </tr>
      <tr>
        <td id="L698" class="blob-num js-line-number" data-line-number="698"></td>
        <td id="LC698" class="blob-code blob-code-inner js-file-line">(gv-define-setter window-height (store)</td>
      </tr>
      <tr>
        <td id="L699" class="blob-num js-line-number" data-line-number="699"></td>
        <td id="LC699" class="blob-code blob-code-inner js-file-line">  `(<span class="pl-c1">progn</span> (enlarge-window (- ,store (window-height))) ,store))</td>
      </tr>
      <tr>
        <td id="L700" class="blob-num js-line-number" data-line-number="700"></td>
        <td id="LC700" class="blob-code blob-code-inner js-file-line">(gv-define-setter window-width (store)</td>
      </tr>
      <tr>
        <td id="L701" class="blob-num js-line-number" data-line-number="701"></td>
        <td id="LC701" class="blob-code blob-code-inner js-file-line">  `(<span class="pl-c1">progn</span> (enlarge-window (- ,store (window-width)) <span class="pl-c1">t</span>) ,store))</td>
      </tr>
      <tr>
        <td id="L702" class="blob-num js-line-number" data-line-number="702"></td>
        <td id="LC702" class="blob-code blob-code-inner js-file-line">(gv-define-simple-setter x-get-secondary-selection x-own-secondary-selection <span class="pl-c1">t</span>)</td>
      </tr>
      <tr>
        <td id="L703" class="blob-num js-line-number" data-line-number="703"></td>
        <td id="LC703" class="blob-code blob-code-inner js-file-line">
</td>
      </tr>
      <tr>
        <td id="L704" class="blob-num js-line-number" data-line-number="704"></td>
        <td id="LC704" class="blob-code blob-code-inner js-file-line"><span class="pl-c">;; More complex setf-methods.</span></td>
      </tr>
      <tr>
        <td id="L705" class="blob-num js-line-number" data-line-number="705"></td>
        <td id="LC705" class="blob-code blob-code-inner js-file-line">
</td>
      </tr>
      <tr>
        <td id="L706" class="blob-num js-line-number" data-line-number="706"></td>
        <td id="LC706" class="blob-code blob-code-inner js-file-line"><span class="pl-c">;; This is a hack that allows (setf (eq a 7) B) to mean either</span></td>
      </tr>
      <tr>
        <td id="L707" class="blob-num js-line-number" data-line-number="707"></td>
        <td id="LC707" class="blob-code blob-code-inner js-file-line"><span class="pl-c">;; (setq a 7) or (setq a nil) depending on whether B is nil or not.</span></td>
      </tr>
      <tr>
        <td id="L708" class="blob-num js-line-number" data-line-number="708"></td>
        <td id="LC708" class="blob-code blob-code-inner js-file-line"><span class="pl-c">;; This is useful when you have control over the PLACE but not over</span></td>
      </tr>
      <tr>
        <td id="L709" class="blob-num js-line-number" data-line-number="709"></td>
        <td id="LC709" class="blob-code blob-code-inner js-file-line"><span class="pl-c">;; the VALUE, as is the case in define-minor-mode&#39;s :variable.</span></td>
      </tr>
      <tr>
        <td id="L710" class="blob-num js-line-number" data-line-number="710"></td>
        <td id="LC710" class="blob-code blob-code-inner js-file-line"><span class="pl-c">;; It turned out that :variable needed more flexibility anyway, so</span></td>
      </tr>
      <tr>
        <td id="L711" class="blob-num js-line-number" data-line-number="711"></td>
        <td id="LC711" class="blob-code blob-code-inner js-file-line"><span class="pl-c">;; this doesn&#39;t seem too useful now.</span></td>
      </tr>
      <tr>
        <td id="L712" class="blob-num js-line-number" data-line-number="712"></td>
        <td id="LC712" class="blob-code blob-code-inner js-file-line">(gv-define-expander <span class="pl-k">eq</span></td>
      </tr>
      <tr>
        <td id="L713" class="blob-num js-line-number" data-line-number="713"></td>
        <td id="LC713" class="blob-code blob-code-inner js-file-line">  (<span class="pl-c1">lambda</span> (<span class="pl-k">do</span> place val)</td>
      </tr>
      <tr>
        <td id="L714" class="blob-num js-line-number" data-line-number="714"></td>
        <td id="LC714" class="blob-code blob-code-inner js-file-line">    (gv-letplace (getter setter) place</td>
      </tr>
      <tr>
        <td id="L715" class="blob-num js-line-number" data-line-number="715"></td>
        <td id="LC715" class="blob-code blob-code-inner js-file-line">      (macroexp-let2 <span class="pl-c1">nil</span> val val</td>
      </tr>
      <tr>
        <td id="L716" class="blob-num js-line-number" data-line-number="716"></td>
        <td id="LC716" class="blob-code blob-code-inner js-file-line">        (funcall <span class="pl-k">do</span> `(<span class="pl-k">eq</span> ,getter ,val)</td>
      </tr>
      <tr>
        <td id="L717" class="blob-num js-line-number" data-line-number="717"></td>
        <td id="LC717" class="blob-code blob-code-inner js-file-line">                 (<span class="pl-c1">lambda</span> (v)</td>
      </tr>
      <tr>
        <td id="L718" class="blob-num js-line-number" data-line-number="718"></td>
        <td id="LC718" class="blob-code blob-code-inner js-file-line">                   `(<span class="pl-c1">cond</span></td>
      </tr>
      <tr>
        <td id="L719" class="blob-num js-line-number" data-line-number="719"></td>
        <td id="LC719" class="blob-code blob-code-inner js-file-line">                     (,v ,(funcall setter val))</td>
      </tr>
      <tr>
        <td id="L720" class="blob-num js-line-number" data-line-number="720"></td>
        <td id="LC720" class="blob-code blob-code-inner js-file-line">                     ((<span class="pl-k">eq</span> ,getter ,val) ,(funcall setter `(not ,val))))))))))</td>
      </tr>
      <tr>
        <td id="L721" class="blob-num js-line-number" data-line-number="721"></td>
        <td id="LC721" class="blob-code blob-code-inner js-file-line">
</td>
      </tr>
      <tr>
        <td id="L722" class="blob-num js-line-number" data-line-number="722"></td>
        <td id="LC722" class="blob-code blob-code-inner js-file-line">(gv-define-expander substring</td>
      </tr>
      <tr>
        <td id="L723" class="blob-num js-line-number" data-line-number="723"></td>
        <td id="LC723" class="blob-code blob-code-inner js-file-line">  (<span class="pl-c1">lambda</span> (<span class="pl-k">do</span> place from &amp;optional to)</td>
      </tr>
      <tr>
        <td id="L724" class="blob-num js-line-number" data-line-number="724"></td>
        <td id="LC724" class="blob-code blob-code-inner js-file-line">    (gv-letplace (getter setter) place</td>
      </tr>
      <tr>
        <td id="L725" class="blob-num js-line-number" data-line-number="725"></td>
        <td id="LC725" class="blob-code blob-code-inner js-file-line">      (macroexp-let2* <span class="pl-c1">nil</span> ((start from) (end to))</td>
      </tr>
      <tr>
        <td id="L726" class="blob-num js-line-number" data-line-number="726"></td>
        <td id="LC726" class="blob-code blob-code-inner js-file-line">        (funcall <span class="pl-k">do</span> `(substring ,getter ,start ,end)</td>
      </tr>
      <tr>
        <td id="L727" class="blob-num js-line-number" data-line-number="727"></td>
        <td id="LC727" class="blob-code blob-code-inner js-file-line">                 (<span class="pl-c1">lambda</span> (v)</td>
      </tr>
      <tr>
        <td id="L728" class="blob-num js-line-number" data-line-number="728"></td>
        <td id="LC728" class="blob-code blob-code-inner js-file-line">                   (funcall setter `(cl--set-substring</td>
      </tr>
      <tr>
        <td id="L729" class="blob-num js-line-number" data-line-number="729"></td>
        <td id="LC729" class="blob-code blob-code-inner js-file-line">                                     ,getter ,start ,end ,v))))))))</td>
      </tr>
      <tr>
        <td id="L730" class="blob-num js-line-number" data-line-number="730"></td>
        <td id="LC730" class="blob-code blob-code-inner js-file-line">
</td>
      </tr>
      <tr>
        <td id="L731" class="blob-num js-line-number" data-line-number="731"></td>
        <td id="LC731" class="blob-code blob-code-inner js-file-line"><span class="pl-c">;;; Miscellaneous.</span></td>
      </tr>
      <tr>
        <td id="L732" class="blob-num js-line-number" data-line-number="732"></td>
        <td id="LC732" class="blob-code blob-code-inner js-file-line">
</td>
      </tr>
      <tr>
        <td id="L733" class="blob-num js-line-number" data-line-number="733"></td>
        <td id="LC733" class="blob-code blob-code-inner js-file-line">(provide &#39;cl-lib)</td>
      </tr>
      <tr>
        <td id="L734" class="blob-num js-line-number" data-line-number="734"></td>
        <td id="LC734" class="blob-code blob-code-inner js-file-line">(unless (<span class="pl-c1">load</span> <span class="pl-s"><span class="pl-pds">&quot;</span>cl-loaddefs<span class="pl-pds">&quot;</span></span> &#39;noerror &#39;quiet)</td>
      </tr>
      <tr>
        <td id="L735" class="blob-num js-line-number" data-line-number="735"></td>
        <td id="LC735" class="blob-code blob-code-inner js-file-line">  <span class="pl-c">;; When bootstrapping, cl-loaddefs hasn&#39;t been built yet!</span></td>
      </tr>
      <tr>
        <td id="L736" class="blob-num js-line-number" data-line-number="736"></td>
        <td id="LC736" class="blob-code blob-code-inner js-file-line">  (require &#39;cl-macs)</td>
      </tr>
      <tr>
        <td id="L737" class="blob-num js-line-number" data-line-number="737"></td>
        <td id="LC737" class="blob-code blob-code-inner js-file-line">  (require &#39;cl-seq))</td>
      </tr>
      <tr>
        <td id="L738" class="blob-num js-line-number" data-line-number="738"></td>
        <td id="LC738" class="blob-code blob-code-inner js-file-line">
</td>
      </tr>
      <tr>
        <td id="L739" class="blob-num js-line-number" data-line-number="739"></td>
        <td id="LC739" class="blob-code blob-code-inner js-file-line"><span class="pl-c">;; Local variables:</span></td>
      </tr>
      <tr>
        <td id="L740" class="blob-num js-line-number" data-line-number="740"></td>
        <td id="LC740" class="blob-code blob-code-inner js-file-line"><span class="pl-c">;; byte-compile-dynamic: t</span></td>
      </tr>
      <tr>
        <td id="L741" class="blob-num js-line-number" data-line-number="741"></td>
        <td id="LC741" class="blob-code blob-code-inner js-file-line"><span class="pl-c">;; End:</span></td>
      </tr>
      <tr>
        <td id="L742" class="blob-num js-line-number" data-line-number="742"></td>
        <td id="LC742" class="blob-code blob-code-inner js-file-line">
</td>
      </tr>
      <tr>
        <td id="L743" class="blob-num js-line-number" data-line-number="743"></td>
        <td id="LC743" class="blob-code blob-code-inner js-file-line"><span class="pl-c">;;; cl-lib.el ends here</span></td>
      </tr>
</table>

  </div>

</div>

<a href="#jump-to-line" rel="facebox[.linejump]" data-hotkey="l" style="display:none">Jump to Line</a>
<div id="jump-to-line" style="display:none">
  <form accept-charset="UTF-8" action="" class="js-jump-to-line-form" method="get"><div style="margin:0;padding:0;display:inline"><input name="utf8" type="hidden" value="&#x2713;" /></div>
    <input class="linejump-input js-jump-to-line-field" type="text" placeholder="Jump to line&hellip;" autofocus>
    <button type="submit" class="btn">Go</button>
</form></div>

        </div>

      </div><!-- /.repo-container -->
      <div class="modal-backdrop"></div>
    </div><!-- /.container -->
  </div><!-- /.site -->


    </div><!-- /.wrapper -->

      <div class="container">
  <div class="site-footer" role="contentinfo">
    <ul class="site-footer-links right">
        <li><a href="https://status.github.com/" data-ga-click="Footer, go to status, text:status">Status</a></li>
      <li><a href="https://developer.github.com" data-ga-click="Footer, go to api, text:api">API</a></li>
      <li><a href="https://training.github.com" data-ga-click="Footer, go to training, text:training">Training</a></li>
      <li><a href="https://shop.github.com" data-ga-click="Footer, go to shop, text:shop">Shop</a></li>
        <li><a href="https://github.com/blog" data-ga-click="Footer, go to blog, text:blog">Blog</a></li>
        <li><a href="https://github.com/about" data-ga-click="Footer, go to about, text:about">About</a></li>
      <li><a href="https://help.github.com" data-ga-click="Footer, go to help, text:help">Help</a></li>

    </ul>

    <a href="https://github.com" aria-label="Homepage">
      <span class="mega-octicon octicon-mark-github" title="GitHub"></span>
</a>
    <ul class="site-footer-links">
      <li>&copy; 2015 <span title="0.07975s from github-fe119-cp1-prd.iad.github.net">GitHub</span>, Inc.</li>
        <li><a href="https://github.com/site/terms" data-ga-click="Footer, go to terms, text:terms">Terms</a></li>
        <li><a href="https://github.com/site/privacy" data-ga-click="Footer, go to privacy, text:privacy">Privacy</a></li>
        <li><a href="https://github.com/security" data-ga-click="Footer, go to security, text:security">Security</a></li>
        <li><a href="https://github.com/contact" data-ga-click="Footer, go to contact, text:contact">Contact</a></li>
    </ul>
  </div>
</div>


    <div class="fullscreen-overlay js-fullscreen-overlay" id="fullscreen_overlay">
  <div class="fullscreen-container js-suggester-container">
    <div class="textarea-wrap">
      <textarea name="fullscreen-contents" id="fullscreen-contents" class="fullscreen-contents js-fullscreen-contents" placeholder=""></textarea>
      <div class="suggester-container">
        <div class="suggester fullscreen-suggester js-suggester js-navigation-container"></div>
      </div>
    </div>
  </div>
  <div class="fullscreen-sidebar">
    <a href="#" class="exit-fullscreen js-exit-fullscreen tooltipped tooltipped-w" aria-label="Exit Zen Mode">
      <span class="mega-octicon octicon-screen-normal"></span>
    </a>
    <a href="#" class="theme-switcher js-theme-switcher tooltipped tooltipped-w"
      aria-label="Switch themes">
      <span class="octicon octicon-color-mode"></span>
    </a>
  </div>
</div>



    
    

    <div id="ajax-error-message" class="flash flash-error">
      <span class="octicon octicon-alert"></span>
      <a href="#" class="octicon octicon-x flash-close js-ajax-error-dismiss" aria-label="Dismiss error"></a>
      Something went wrong with that request. Please try again.
    </div>


      <script crossorigin="anonymous" src="https://assets-cdn.github.com/assets/frameworks-808fcfcd63c9ecba3e84453f540cb1cbafde48c6b30c1d51ebd4e67e88ff66bd.js"></script>
      <script async="async" crossorigin="anonymous" src="https://assets-cdn.github.com/assets/github/index-e19a979374f90aa9b60e2ba886d7bc2eef9b8220fd076673aaf336d9a214c862.js"></script>
      
      
  </body>
</html>







<!DOCTYPE html>
<html class="   ">
  <head prefix="og: http://ogp.me/ns# fb: http://ogp.me/ns/fb# object: http://ogp.me/ns/object# article: http://ogp.me/ns/article# profile: http://ogp.me/ns/profile#">
    <meta charset='utf-8'>
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    
    
    <title>molokai-theme/molokai-theme.el at master · hbin/molokai-theme · GitHub</title>
    <link rel="search" type="application/opensearchdescription+xml" href="/opensearch.xml" title="GitHub" />
    <link rel="fluid-icon" href="https://github.com/fluidicon.png" title="GitHub" />
    <link rel="apple-touch-icon" sizes="57x57" href="/apple-touch-icon-114.png" />
    <link rel="apple-touch-icon" sizes="114x114" href="/apple-touch-icon-114.png" />
    <link rel="apple-touch-icon" sizes="72x72" href="/apple-touch-icon-144.png" />
    <link rel="apple-touch-icon" sizes="144x144" href="/apple-touch-icon-144.png" />
    <meta property="fb:app_id" content="1401488693436528"/>

      <meta content="@github" name="twitter:site" /><meta content="summary" name="twitter:card" /><meta content="hbin/molokai-theme" name="twitter:title" /><meta content="molokai-theme - Yet another molokai theme for Emacs 24." name="twitter:description" /><meta content="https://avatars3.githubusercontent.com/u/1296308?s=400" name="twitter:image:src" />
<meta content="GitHub" property="og:site_name" /><meta content="object" property="og:type" /><meta content="https://avatars3.githubusercontent.com/u/1296308?s=400" property="og:image" /><meta content="hbin/molokai-theme" property="og:title" /><meta content="https://github.com/hbin/molokai-theme" property="og:url" /><meta content="molokai-theme - Yet another molokai theme for Emacs 24." property="og:description" />

    <link rel="assets" href="https://github.global.ssl.fastly.net/">
    <link rel="conduit-xhr" href="https://ghconduit.com:25035/">
    <link rel="xhr-socket" href="/_sockets" />

    <meta name="msapplication-TileImage" content="/windows-tile.png" />
    <meta name="msapplication-TileColor" content="#ffffff" />
    <meta name="selected-link" value="repo_source" data-pjax-transient />
    <meta content="collector.githubapp.com" name="octolytics-host" /><meta content="collector-cdn.github.com" name="octolytics-script-host" /><meta content="github" name="octolytics-app-id" /><meta content="72F8EFE2:2126:3E71485:5350BF33" name="octolytics-dimension-request_id" />
    

    
    
    <link rel="icon" type="image/x-icon" href="https://github.global.ssl.fastly.net/favicon.ico" />

    <meta content="authenticity_token" name="csrf-param" />
<meta content="AkiNPiAdakG0FSmcptQ87uGp/a2Q9m7UKHw0y7QeVsE=" name="csrf-token" />

    <link href="https://github.global.ssl.fastly.net/assets/github-96f104cca04e50f916e268ebf2d3f7b009e1405e.css" media="all" rel="stylesheet" type="text/css" />
    <link href="https://github.global.ssl.fastly.net/assets/github2-bef9ee52d3a5020a5119687367641a50a21f66a4.css" media="all" rel="stylesheet" type="text/css" />
    


        <script crossorigin="anonymous" src="https://github.global.ssl.fastly.net/assets/frameworks-bdc08296a41dcc580bdf91802b61d36f6e37bbdb.js" type="text/javascript"></script>
        <script async="async" crossorigin="anonymous" src="https://github.global.ssl.fastly.net/assets/github-eefdc7c8cc931194bb5ecfb5412a199b6caed9e4.js" type="text/javascript"></script>
        
        
      <meta http-equiv="x-pjax-version" content="e106388f11201798cfd44faf73f7e85f">

        <link data-pjax-transient rel='permalink' href='/hbin/molokai-theme/blob/556540f89388d2966fcddba801b777214e001d9f/molokai-theme.el'>

  <meta name="description" content="molokai-theme - Yet another molokai theme for Emacs 24." />

  <meta content="1296308" name="octolytics-dimension-user_id" /><meta content="hbin" name="octolytics-dimension-user_login" /><meta content="9487112" name="octolytics-dimension-repository_id" /><meta content="hbin/molokai-theme" name="octolytics-dimension-repository_nwo" /><meta content="true" name="octolytics-dimension-repository_public" /><meta content="false" name="octolytics-dimension-repository_is_fork" /><meta content="9487112" name="octolytics-dimension-repository_network_root_id" /><meta content="hbin/molokai-theme" name="octolytics-dimension-repository_network_root_nwo" />
  <link href="https://github.com/hbin/molokai-theme/commits/master.atom" rel="alternate" title="Recent Commits to molokai-theme:master" type="application/atom+xml" />

  </head>


  <body class="logged_out  env-production macintosh vis-public page-blob">
    <a href="#start-of-content" tabindex="1" class="accessibility-aid js-skip-to-content">Skip to content</a>
    <div class="wrapper">
      
      
      
      


      
      <div class="header header-logged-out">
  <div class="container clearfix">

    <a class="header-logo-wordmark" href="https://github.com/">
      <span class="mega-octicon octicon-logo-github"></span>
    </a>

    <div class="header-actions">
        <a class="button primary" href="/join">Sign up</a>
      <a class="button signin" href="/login?return_to=%2Fhbin%2Fmolokai-theme%2Fblob%2Fmaster%2Fmolokai-theme.el">Sign in</a>
    </div>

    <div class="command-bar js-command-bar  in-repository">

      <ul class="top-nav">
          <li class="explore"><a href="/explore">Explore</a></li>
        <li class="features"><a href="/features">Features</a></li>
          <li class="enterprise"><a href="https://enterprise.github.com/">Enterprise</a></li>
          <li class="blog"><a href="/blog">Blog</a></li>
      </ul>
        <form accept-charset="UTF-8" action="/search" class="command-bar-form" id="top_search_form" method="get">

<div class="commandbar">
  <span class="message"></span>
  <input type="text" data-hotkey="/ s" name="q" id="js-command-bar-field" placeholder="Search or type a command" tabindex="1" autocapitalize="off"
    
    
      data-repo="hbin/molokai-theme"
      data-branch="master"
      data-sha="b9cca77c5fbf780e9a39f0e4e1f5c56f6526313c"
  >
  <div class="display hidden"></div>
</div>

    <input type="hidden" name="nwo" value="hbin/molokai-theme" />

    <div class="select-menu js-menu-container js-select-menu search-context-select-menu">
      <span class="minibutton select-menu-button js-menu-target" role="button" aria-haspopup="true">
        <span class="js-select-button">This repository</span>
      </span>

      <div class="select-menu-modal-holder js-menu-content js-navigation-container" aria-hidden="true">
        <div class="select-menu-modal">

          <div class="select-menu-item js-navigation-item js-this-repository-navigation-item selected">
            <span class="select-menu-item-icon octicon octicon-check"></span>
            <input type="radio" class="js-search-this-repository" name="search_target" value="repository" checked="checked" />
            <div class="select-menu-item-text js-select-button-text">This repository</div>
          </div> <!-- /.select-menu-item -->

          <div class="select-menu-item js-navigation-item js-all-repositories-navigation-item">
            <span class="select-menu-item-icon octicon octicon-check"></span>
            <input type="radio" name="search_target" value="global" />
            <div class="select-menu-item-text js-select-button-text">All repositories</div>
          </div> <!-- /.select-menu-item -->

        </div>
      </div>
    </div>

  <span class="help tooltipped tooltipped-s" aria-label="Show command bar help">
    <span class="octicon octicon-question"></span>
  </span>


  <input type="hidden" name="ref" value="cmdform">

</form>
    </div>

  </div>
</div>



      <div id="start-of-content" class="accessibility-aid"></div>
          <div class="site" itemscope itemtype="http://schema.org/WebPage">
    
    <div class="pagehead repohead instapaper_ignore readability-menu">
      <div class="container">
        

<ul class="pagehead-actions">


  <li>
    <a href="/login?return_to=%2Fhbin%2Fmolokai-theme"
    class="minibutton with-count js-toggler-target star-button tooltipped tooltipped-n"
    aria-label="You must be signed in to star a repository" rel="nofollow">
    <span class="octicon octicon-star"></span>Star
  </a>

    <a class="social-count js-social-count" href="/hbin/molokai-theme/stargazers">
      47
    </a>

  </li>

    <li>
      <a href="/login?return_to=%2Fhbin%2Fmolokai-theme"
        class="minibutton with-count js-toggler-target fork-button tooltipped tooltipped-n"
        aria-label="You must be signed in to fork a repository" rel="nofollow">
        <span class="octicon octicon-git-branch"></span>Fork
      </a>
      <a href="/hbin/molokai-theme/network" class="social-count">
        21
      </a>
    </li>
</ul>

        <h1 itemscope itemtype="http://data-vocabulary.org/Breadcrumb" class="entry-title public">
          <span class="repo-label"><span>public</span></span>
          <span class="mega-octicon octicon-repo"></span>
          <span class="author"><a href="/hbin" class="url fn" itemprop="url" rel="author"><span itemprop="title">hbin</span></a></span><!--
       --><span class="path-divider">/</span><!--
       --><strong><a href="/hbin/molokai-theme" class="js-current-repository js-repo-home-link">molokai-theme</a></strong>

          <span class="page-context-loader">
            <img alt="Octocat-spinner-32" height="16" src="https://github.global.ssl.fastly.net/images/spinners/octocat-spinner-32.gif" width="16" />
          </span>

        </h1>
      </div><!-- /.container -->
    </div><!-- /.repohead -->

    <div class="container">
      <div class="repository-with-sidebar repo-container new-discussion-timeline js-new-discussion-timeline  ">
        <div class="repository-sidebar clearfix">
            

<div class="sunken-menu vertical-right repo-nav js-repo-nav js-repository-container-pjax js-octicon-loaders">
  <div class="sunken-menu-contents">
    <ul class="sunken-menu-group">
      <li class="tooltipped tooltipped-w" aria-label="Code">
        <a href="/hbin/molokai-theme" aria-label="Code" class="selected js-selected-navigation-item sunken-menu-item" data-gotokey="c" data-pjax="true" data-selected-links="repo_source repo_downloads repo_commits repo_tags repo_branches /hbin/molokai-theme">
          <span class="octicon octicon-code"></span> <span class="full-word">Code</span>
          <img alt="Octocat-spinner-32" class="mini-loader" height="16" src="https://github.global.ssl.fastly.net/images/spinners/octocat-spinner-32.gif" width="16" />
</a>      </li>

        <li class="tooltipped tooltipped-w" aria-label="Issues">
          <a href="/hbin/molokai-theme/issues" aria-label="Issues" class="js-selected-navigation-item sunken-menu-item js-disable-pjax" data-gotokey="i" data-selected-links="repo_issues /hbin/molokai-theme/issues">
            <span class="octicon octicon-issue-opened"></span> <span class="full-word">Issues</span>
            <span class='counter'>1</span>
            <img alt="Octocat-spinner-32" class="mini-loader" height="16" src="https://github.global.ssl.fastly.net/images/spinners/octocat-spinner-32.gif" width="16" />
</a>        </li>

      <li class="tooltipped tooltipped-w" aria-label="Pull Requests">
        <a href="/hbin/molokai-theme/pulls" aria-label="Pull Requests" class="js-selected-navigation-item sunken-menu-item js-disable-pjax" data-gotokey="p" data-selected-links="repo_pulls /hbin/molokai-theme/pulls">
            <span class="octicon octicon-git-pull-request"></span> <span class="full-word">Pull Requests</span>
            <span class='counter'>0</span>
            <img alt="Octocat-spinner-32" class="mini-loader" height="16" src="https://github.global.ssl.fastly.net/images/spinners/octocat-spinner-32.gif" width="16" />
</a>      </li>


    </ul>
    <div class="sunken-menu-separator"></div>
    <ul class="sunken-menu-group">

      <li class="tooltipped tooltipped-w" aria-label="Pulse">
        <a href="/hbin/molokai-theme/pulse" aria-label="Pulse" class="js-selected-navigation-item sunken-menu-item" data-pjax="true" data-selected-links="pulse /hbin/molokai-theme/pulse">
          <span class="octicon octicon-pulse"></span> <span class="full-word">Pulse</span>
          <img alt="Octocat-spinner-32" class="mini-loader" height="16" src="https://github.global.ssl.fastly.net/images/spinners/octocat-spinner-32.gif" width="16" />
</a>      </li>

      <li class="tooltipped tooltipped-w" aria-label="Graphs">
        <a href="/hbin/molokai-theme/graphs" aria-label="Graphs" class="js-selected-navigation-item sunken-menu-item" data-pjax="true" data-selected-links="repo_graphs repo_contributors /hbin/molokai-theme/graphs">
          <span class="octicon octicon-graph"></span> <span class="full-word">Graphs</span>
          <img alt="Octocat-spinner-32" class="mini-loader" height="16" src="https://github.global.ssl.fastly.net/images/spinners/octocat-spinner-32.gif" width="16" />
</a>      </li>

      <li class="tooltipped tooltipped-w" aria-label="Network">
        <a href="/hbin/molokai-theme/network" aria-label="Network" class="js-selected-navigation-item sunken-menu-item js-disable-pjax" data-selected-links="repo_network /hbin/molokai-theme/network">
          <span class="octicon octicon-git-branch"></span> <span class="full-word">Network</span>
          <img alt="Octocat-spinner-32" class="mini-loader" height="16" src="https://github.global.ssl.fastly.net/images/spinners/octocat-spinner-32.gif" width="16" />
</a>      </li>
    </ul>


  </div>
</div>

              <div class="only-with-full-nav">
                

  

<div class="clone-url open"
  data-protocol-type="http"
  data-url="/users/set_protocol?protocol_selector=http&amp;protocol_type=clone">
  <h3><strong>HTTPS</strong> clone URL</h3>
  <div class="clone-url-box">
    <input type="text" class="clone js-url-field"
           value="https://github.com/hbin/molokai-theme.git" readonly="readonly">

    <span aria-label="copy to clipboard" class="js-zeroclipboard url-box-clippy minibutton zeroclipboard-button" data-clipboard-text="https://github.com/hbin/molokai-theme.git" data-copied-hint="copied!"><span class="octicon octicon-clippy"></span></span>
  </div>
</div>

  

<div class="clone-url "
  data-protocol-type="subversion"
  data-url="/users/set_protocol?protocol_selector=subversion&amp;protocol_type=clone">
  <h3><strong>Subversion</strong> checkout URL</h3>
  <div class="clone-url-box">
    <input type="text" class="clone js-url-field"
           value="https://github.com/hbin/molokai-theme" readonly="readonly">

    <span aria-label="copy to clipboard" class="js-zeroclipboard url-box-clippy minibutton zeroclipboard-button" data-clipboard-text="https://github.com/hbin/molokai-theme" data-copied-hint="copied!"><span class="octicon octicon-clippy"></span></span>
  </div>
</div>


<p class="clone-options">You can clone with
      <a href="#" class="js-clone-selector" data-protocol="http">HTTPS</a>
      or <a href="#" class="js-clone-selector" data-protocol="subversion">Subversion</a>.
  <span class="help tooltipped tooltipped-n" aria-label="Get help on which URL is right for you.">
    <a href="https://help.github.com/articles/which-remote-url-should-i-use">
    <span class="octicon octicon-question"></span>
    </a>
  </span>
</p>

  <a href="http://mac.github.com" data-url="github-mac://openRepo/https://github.com/hbin/molokai-theme" class="minibutton sidebar-button js-conduit-rewrite-url" title="Save hbin/molokai-theme to your computer and use it in GitHub Desktop." aria-label="Save hbin/molokai-theme to your computer and use it in GitHub Desktop.">
    <span class="octicon octicon-device-desktop"></span>
    Clone in Desktop
  </a>


                <a href="/hbin/molokai-theme/archive/master.zip"
                   class="minibutton sidebar-button"
                   aria-label="Download hbin/molokai-theme as a zip file"
                   title="Download hbin/molokai-theme as a zip file"
                   rel="nofollow">
                  <span class="octicon octicon-cloud-download"></span>
                  Download ZIP
                </a>
              </div>
        </div><!-- /.repository-sidebar -->

        <div id="js-repo-pjax-container" class="repository-content context-loader-container" data-pjax-container>
          


<!-- blob contrib key: blob_contributors:v21:43c7c7b12c122773ef97197b7be5d0f7 -->

<p title="This is a placeholder element" class="js-history-link-replace hidden"></p>

<a href="/hbin/molokai-theme/find/master" data-pjax data-hotkey="t" class="js-show-file-finder" style="display:none">Show File Finder</a>

<div class="file-navigation">
  

<div class="select-menu js-menu-container js-select-menu" >
  <span class="minibutton select-menu-button js-menu-target" data-hotkey="w"
    data-master-branch="master"
    data-ref="master"
    role="button" aria-label="Switch branches or tags" tabindex="0" aria-haspopup="true">
    <span class="octicon octicon-git-branch"></span>
    <i>branch:</i>
    <span class="js-select-button">master</span>
  </span>

  <div class="select-menu-modal-holder js-menu-content js-navigation-container" data-pjax aria-hidden="true">

    <div class="select-menu-modal">
      <div class="select-menu-header">
        <span class="select-menu-title">Switch branches/tags</span>
        <span class="octicon octicon-remove-close js-menu-close"></span>
      </div> <!-- /.select-menu-header -->

      <div class="select-menu-filters">
        <div class="select-menu-text-filter">
          <input type="text" aria-label="Filter branches/tags" id="context-commitish-filter-field" class="js-filterable-field js-navigation-enable" placeholder="Filter branches/tags">
        </div>
        <div class="select-menu-tabs">
          <ul>
            <li class="select-menu-tab">
              <a href="#" data-tab-filter="branches" class="js-select-menu-tab">Branches</a>
            </li>
            <li class="select-menu-tab">
              <a href="#" data-tab-filter="tags" class="js-select-menu-tab">Tags</a>
            </li>
          </ul>
        </div><!-- /.select-menu-tabs -->
      </div><!-- /.select-menu-filters -->

      <div class="select-menu-list select-menu-tab-bucket js-select-menu-tab-bucket" data-tab-filter="branches">

        <div data-filterable-for="context-commitish-filter-field" data-filterable-type="substring">


            <div class="select-menu-item js-navigation-item selected">
              <span class="select-menu-item-icon octicon octicon-check"></span>
              <a href="/hbin/molokai-theme/blob/master/molokai-theme.el"
                 data-name="master"
                 data-skip-pjax="true"
                 rel="nofollow"
                 class="js-navigation-open select-menu-item-text js-select-button-text css-truncate-target"
                 title="master">master</a>
            </div> <!-- /.select-menu-item -->
        </div>

          <div class="select-menu-no-results">Nothing to show</div>
      </div> <!-- /.select-menu-list -->

      <div class="select-menu-list select-menu-tab-bucket js-select-menu-tab-bucket" data-tab-filter="tags">
        <div data-filterable-for="context-commitish-filter-field" data-filterable-type="substring">


        </div>

        <div class="select-menu-no-results">Nothing to show</div>
      </div> <!-- /.select-menu-list -->

    </div> <!-- /.select-menu-modal -->
  </div> <!-- /.select-menu-modal-holder -->
</div> <!-- /.select-menu -->

  <div class="breadcrumb">
    <span class='repo-root js-repo-root'><span itemscope="" itemtype="http://data-vocabulary.org/Breadcrumb"><a href="/hbin/molokai-theme" data-branch="master" data-direction="back" data-pjax="true" itemscope="url"><span itemprop="title">molokai-theme</span></a></span></span><span class="separator"> / </span><strong class="final-path">molokai-theme.el</strong> <span aria-label="copy to clipboard" class="js-zeroclipboard minibutton zeroclipboard-button" data-clipboard-text="molokai-theme.el" data-copied-hint="copied!"><span class="octicon octicon-clippy"></span></span>
  </div>
</div>


  <div class="commit commit-loader file-history-tease js-deferred-content" data-url="/hbin/molokai-theme/contributors/master/molokai-theme.el">
    Fetching contributors…

    <div class="participation">
      <p class="loader-loading"><img alt="Octocat-spinner-32-eaf2f5" height="16" src="https://github.global.ssl.fastly.net/images/spinners/octocat-spinner-32-EAF2F5.gif" width="16" /></p>
      <p class="loader-error">Cannot retrieve contributors at this time</p>
    </div>
  </div>

<div class="file-box">
  <div class="file">
    <div class="meta clearfix">
      <div class="info file-name">
        <span class="icon"><b class="octicon octicon-file-text"></b></span>
        <span class="mode" title="File Mode">file</span>
        <span class="meta-divider"></span>
          <span>159 lines (135 sloc)</span>
          <span class="meta-divider"></span>
        <span>5.867 kb</span>
      </div>
      <div class="actions">
        <div class="button-group">
            <a class="minibutton tooltipped tooltipped-w js-conduit-openfile-check"
               href="http://mac.github.com"
               data-url="github-mac://openRepo/https://github.com/hbin/molokai-theme?branch=master&amp;filepath=molokai-theme.el"
               aria-label="Open this file in GitHub for Mac"
               data-failed-title="Your version of GitHub for Mac is too old to open this file. Try checking for updates.">
                <span class="octicon octicon-device-desktop"></span> Open
            </a>
              <a class="minibutton disabled tooltipped tooltipped-w" href="#"
                 aria-label="You must be signed in to make or propose changes">Edit</a>
          <a href="/hbin/molokai-theme/raw/master/molokai-theme.el" class="button minibutton " id="raw-url">Raw</a>
            <a href="/hbin/molokai-theme/blame/master/molokai-theme.el" class="button minibutton js-update-url-with-hash">Blame</a>
          <a href="/hbin/molokai-theme/commits/master/molokai-theme.el" class="button minibutton " rel="nofollow">History</a>
        </div><!-- /.button-group -->
          <a class="minibutton danger disabled empty-icon tooltipped tooltipped-w" href="#"
             aria-label="You must be signed in to make or propose changes">
          Delete
        </a>
      </div><!-- /.actions -->
    </div>
        <div class="blob-wrapper data type-emacs-lisp js-blob-data">
        <table class="file-code file-diff tab-size-8">
          <tr class="file-code-line">
            <td class="blob-line-nums">
              <span id="L1" rel="#L1">1</span>
<span id="L2" rel="#L2">2</span>
<span id="L3" rel="#L3">3</span>
<span id="L4" rel="#L4">4</span>
<span id="L5" rel="#L5">5</span>
<span id="L6" rel="#L6">6</span>
<span id="L7" rel="#L7">7</span>
<span id="L8" rel="#L8">8</span>
<span id="L9" rel="#L9">9</span>
<span id="L10" rel="#L10">10</span>
<span id="L11" rel="#L11">11</span>
<span id="L12" rel="#L12">12</span>
<span id="L13" rel="#L13">13</span>
<span id="L14" rel="#L14">14</span>
<span id="L15" rel="#L15">15</span>
<span id="L16" rel="#L16">16</span>
<span id="L17" rel="#L17">17</span>
<span id="L18" rel="#L18">18</span>
<span id="L19" rel="#L19">19</span>
<span id="L20" rel="#L20">20</span>
<span id="L21" rel="#L21">21</span>
<span id="L22" rel="#L22">22</span>
<span id="L23" rel="#L23">23</span>
<span id="L24" rel="#L24">24</span>
<span id="L25" rel="#L25">25</span>
<span id="L26" rel="#L26">26</span>
<span id="L27" rel="#L27">27</span>
<span id="L28" rel="#L28">28</span>
<span id="L29" rel="#L29">29</span>
<span id="L30" rel="#L30">30</span>
<span id="L31" rel="#L31">31</span>
<span id="L32" rel="#L32">32</span>
<span id="L33" rel="#L33">33</span>
<span id="L34" rel="#L34">34</span>
<span id="L35" rel="#L35">35</span>
<span id="L36" rel="#L36">36</span>
<span id="L37" rel="#L37">37</span>
<span id="L38" rel="#L38">38</span>
<span id="L39" rel="#L39">39</span>
<span id="L40" rel="#L40">40</span>
<span id="L41" rel="#L41">41</span>
<span id="L42" rel="#L42">42</span>
<span id="L43" rel="#L43">43</span>
<span id="L44" rel="#L44">44</span>
<span id="L45" rel="#L45">45</span>
<span id="L46" rel="#L46">46</span>
<span id="L47" rel="#L47">47</span>
<span id="L48" rel="#L48">48</span>
<span id="L49" rel="#L49">49</span>
<span id="L50" rel="#L50">50</span>
<span id="L51" rel="#L51">51</span>
<span id="L52" rel="#L52">52</span>
<span id="L53" rel="#L53">53</span>
<span id="L54" rel="#L54">54</span>
<span id="L55" rel="#L55">55</span>
<span id="L56" rel="#L56">56</span>
<span id="L57" rel="#L57">57</span>
<span id="L58" rel="#L58">58</span>
<span id="L59" rel="#L59">59</span>
<span id="L60" rel="#L60">60</span>
<span id="L61" rel="#L61">61</span>
<span id="L62" rel="#L62">62</span>
<span id="L63" rel="#L63">63</span>
<span id="L64" rel="#L64">64</span>
<span id="L65" rel="#L65">65</span>
<span id="L66" rel="#L66">66</span>
<span id="L67" rel="#L67">67</span>
<span id="L68" rel="#L68">68</span>
<span id="L69" rel="#L69">69</span>
<span id="L70" rel="#L70">70</span>
<span id="L71" rel="#L71">71</span>
<span id="L72" rel="#L72">72</span>
<span id="L73" rel="#L73">73</span>
<span id="L74" rel="#L74">74</span>
<span id="L75" rel="#L75">75</span>
<span id="L76" rel="#L76">76</span>
<span id="L77" rel="#L77">77</span>
<span id="L78" rel="#L78">78</span>
<span id="L79" rel="#L79">79</span>
<span id="L80" rel="#L80">80</span>
<span id="L81" rel="#L81">81</span>
<span id="L82" rel="#L82">82</span>
<span id="L83" rel="#L83">83</span>
<span id="L84" rel="#L84">84</span>
<span id="L85" rel="#L85">85</span>
<span id="L86" rel="#L86">86</span>
<span id="L87" rel="#L87">87</span>
<span id="L88" rel="#L88">88</span>
<span id="L89" rel="#L89">89</span>
<span id="L90" rel="#L90">90</span>
<span id="L91" rel="#L91">91</span>
<span id="L92" rel="#L92">92</span>
<span id="L93" rel="#L93">93</span>
<span id="L94" rel="#L94">94</span>
<span id="L95" rel="#L95">95</span>
<span id="L96" rel="#L96">96</span>
<span id="L97" rel="#L97">97</span>
<span id="L98" rel="#L98">98</span>
<span id="L99" rel="#L99">99</span>
<span id="L100" rel="#L100">100</span>
<span id="L101" rel="#L101">101</span>
<span id="L102" rel="#L102">102</span>
<span id="L103" rel="#L103">103</span>
<span id="L104" rel="#L104">104</span>
<span id="L105" rel="#L105">105</span>
<span id="L106" rel="#L106">106</span>
<span id="L107" rel="#L107">107</span>
<span id="L108" rel="#L108">108</span>
<span id="L109" rel="#L109">109</span>
<span id="L110" rel="#L110">110</span>
<span id="L111" rel="#L111">111</span>
<span id="L112" rel="#L112">112</span>
<span id="L113" rel="#L113">113</span>
<span id="L114" rel="#L114">114</span>
<span id="L115" rel="#L115">115</span>
<span id="L116" rel="#L116">116</span>
<span id="L117" rel="#L117">117</span>
<span id="L118" rel="#L118">118</span>
<span id="L119" rel="#L119">119</span>
<span id="L120" rel="#L120">120</span>
<span id="L121" rel="#L121">121</span>
<span id="L122" rel="#L122">122</span>
<span id="L123" rel="#L123">123</span>
<span id="L124" rel="#L124">124</span>
<span id="L125" rel="#L125">125</span>
<span id="L126" rel="#L126">126</span>
<span id="L127" rel="#L127">127</span>
<span id="L128" rel="#L128">128</span>
<span id="L129" rel="#L129">129</span>
<span id="L130" rel="#L130">130</span>
<span id="L131" rel="#L131">131</span>
<span id="L132" rel="#L132">132</span>
<span id="L133" rel="#L133">133</span>
<span id="L134" rel="#L134">134</span>
<span id="L135" rel="#L135">135</span>
<span id="L136" rel="#L136">136</span>
<span id="L137" rel="#L137">137</span>
<span id="L138" rel="#L138">138</span>
<span id="L139" rel="#L139">139</span>
<span id="L140" rel="#L140">140</span>
<span id="L141" rel="#L141">141</span>
<span id="L142" rel="#L142">142</span>
<span id="L143" rel="#L143">143</span>
<span id="L144" rel="#L144">144</span>
<span id="L145" rel="#L145">145</span>
<span id="L146" rel="#L146">146</span>
<span id="L147" rel="#L147">147</span>
<span id="L148" rel="#L148">148</span>
<span id="L149" rel="#L149">149</span>
<span id="L150" rel="#L150">150</span>
<span id="L151" rel="#L151">151</span>
<span id="L152" rel="#L152">152</span>
<span id="L153" rel="#L153">153</span>
<span id="L154" rel="#L154">154</span>
<span id="L155" rel="#L155">155</span>
<span id="L156" rel="#L156">156</span>
<span id="L157" rel="#L157">157</span>
<span id="L158" rel="#L158">158</span>

            </td>
            <td class="blob-line-code"><div class="code-body highlight"><pre><div class='line' id='LC1'><span class="c1">;;; molokai-theme.el --- Yet another molokai theme for Emacs 24</span></div><div class='line' id='LC2'><br/></div><div class='line' id='LC3'><span class="c1">;; Copyright (C) 2013 Huang Bin</span></div><div class='line' id='LC4'><br/></div><div class='line' id='LC5'><span class="c1">;; Author: Huang Bin &lt;embrace.hbin@gmail.com&gt;</span></div><div class='line' id='LC6'><span class="c1">;; URL: https://github.com/hbin/molokai-theme</span></div><div class='line' id='LC7'><span class="c1">;; Version: 0.8</span></div><div class='line' id='LC8'><br/></div><div class='line' id='LC9'><span class="c1">;; This program is free software; you can redistribute it and/or modify</span></div><div class='line' id='LC10'><span class="c1">;; it under the terms of the GNU General Public License as published by</span></div><div class='line' id='LC11'><span class="c1">;; the Free Software Foundation, either version 3 of the License, or</span></div><div class='line' id='LC12'><span class="c1">;; (at your option) any later version.</span></div><div class='line' id='LC13'><br/></div><div class='line' id='LC14'><span class="c1">;; This program is distributed in the hope that it will be useful,</span></div><div class='line' id='LC15'><span class="c1">;; but WITHOUT ANY WARRANTY; without even the implied warranty of</span></div><div class='line' id='LC16'><span class="c1">;; MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the</span></div><div class='line' id='LC17'><span class="c1">;; GNU General Public License for more details.</span></div><div class='line' id='LC18'><br/></div><div class='line' id='LC19'><span class="c1">;; You should have received a copy of the GNU General Public License</span></div><div class='line' id='LC20'><span class="c1">;; along with this program.  If not, see &lt;http://www.gnu.org/licenses/&gt;.</span></div><div class='line' id='LC21'><br/></div><div class='line' id='LC22'><span class="c1">;;; Commentary:</span></div><div class='line' id='LC23'><span class="c1">;;</span></div><div class='line' id='LC24'><span class="c1">;; This is another molokai dark theme for Emacs 24.</span></div><div class='line' id='LC25'><span class="c1">;; Equiped with my favorites.</span></div><div class='line' id='LC26'><br/></div><div class='line' id='LC27'><span class="c1">;;; Requirements:</span></div><div class='line' id='LC28'><span class="c1">;;</span></div><div class='line' id='LC29'><span class="c1">;; Emacs 24</span></div><div class='line' id='LC30'><br/></div><div class='line' id='LC31'><span class="c1">;;; Code:</span></div><div class='line' id='LC32'><span class="p">(</span><span class="nf">deftheme</span> <span class="nv">molokai</span> <span class="s">&quot;The molokai color theme for Emacs 24&quot;</span><span class="p">)</span></div><div class='line' id='LC33'><br/></div><div class='line' id='LC34'><span class="p">(</span><span class="k">let </span><span class="p">((</span><span class="nf">class</span> <span class="o">&#39;</span><span class="p">((</span><span class="nf">class</span> <span class="nv">color</span><span class="p">)</span> <span class="p">(</span><span class="nf">min-colors</span> <span class="mi">89</span><span class="p">)))</span></div><div class='line' id='LC35'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="c1">;; molokai palette</span></div><div class='line' id='LC36'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="p">(</span><span class="nf">molokai-white</span>          <span class="s">&quot;#ffffff&quot;</span><span class="p">)</span></div><div class='line' id='LC37'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="p">(</span><span class="nf">molokai-fg</span>             <span class="s">&quot;#f8f8f0&quot;</span><span class="p">)</span></div><div class='line' id='LC38'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="p">(</span><span class="nf">molokai-red</span>            <span class="s">&quot;#ff0000&quot;</span><span class="p">)</span></div><div class='line' id='LC39'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="p">(</span><span class="nf">molokai-pink</span>           <span class="s">&quot;#f92672&quot;</span><span class="p">)</span></div><div class='line' id='LC40'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="p">(</span><span class="nf">molokai-orange+5</span>       <span class="s">&quot;#ef5939&quot;</span><span class="p">)</span></div><div class='line' id='LC41'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="p">(</span><span class="nf">molokai-orange</span>         <span class="s">&quot;#fd971f&quot;</span><span class="p">)</span></div><div class='line' id='LC42'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="p">(</span><span class="nf">molokai-yellow</span>         <span class="s">&quot;#ffff00&quot;</span><span class="p">)</span></div><div class='line' id='LC43'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="p">(</span><span class="nf">molokai-darkgoldenrod</span>  <span class="s">&quot;#e6db74&quot;</span><span class="p">)</span></div><div class='line' id='LC44'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="p">(</span><span class="nf">molokai-wheat</span>          <span class="s">&quot;#c4be89&quot;</span><span class="p">)</span></div><div class='line' id='LC45'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="p">(</span><span class="nf">molokai-olive</span>          <span class="s">&quot;#808000&quot;</span><span class="p">)</span></div><div class='line' id='LC46'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="p">(</span><span class="nf">molokai-chartreuse</span>     <span class="s">&quot;#a6e22e&quot;</span><span class="p">)</span></div><div class='line' id='LC47'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="p">(</span><span class="nf">molokai-lime</span>           <span class="s">&quot;#00ff00&quot;</span><span class="p">)</span></div><div class='line' id='LC48'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="p">(</span><span class="nf">molokai-green</span>          <span class="s">&quot;#008000&quot;</span><span class="p">)</span></div><div class='line' id='LC49'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="p">(</span><span class="nf">molokai-darkwine</span>       <span class="s">&quot;#1e0010&quot;</span><span class="p">)</span></div><div class='line' id='LC50'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="p">(</span><span class="nf">molokai-maroon</span>         <span class="s">&quot;#800000&quot;</span><span class="p">)</span></div><div class='line' id='LC51'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="p">(</span><span class="nf">molokai-wine</span>           <span class="s">&quot;#960050&quot;</span><span class="p">)</span></div><div class='line' id='LC52'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="p">(</span><span class="nf">molokai-teal</span>           <span class="s">&quot;#008080&quot;</span><span class="p">)</span></div><div class='line' id='LC53'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="p">(</span><span class="nf">molokai-aqua</span>           <span class="s">&quot;#00ffff&quot;</span><span class="p">)</span></div><div class='line' id='LC54'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="p">(</span><span class="nf">molokai-blue</span>           <span class="s">&quot;#66d9ef&quot;</span><span class="p">)</span></div><div class='line' id='LC55'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="p">(</span><span class="nf">molokai-slateblue</span>      <span class="s">&quot;#7070f0&quot;</span><span class="p">)</span></div><div class='line' id='LC56'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="p">(</span><span class="nf">molokai-purple</span>         <span class="s">&quot;#ae81ff&quot;</span><span class="p">)</span></div><div class='line' id='LC57'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="p">(</span><span class="nf">molokai-palevioletred</span>  <span class="s">&quot;#d33682&quot;</span><span class="p">)</span></div><div class='line' id='LC58'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="p">(</span><span class="nf">molokai-grey-2</span>         <span class="s">&quot;#bcbcbc&quot;</span><span class="p">)</span></div><div class='line' id='LC59'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="p">(</span><span class="nf">molokai-grey-1</span>         <span class="s">&quot;#8f8f8f&quot;</span><span class="p">)</span></div><div class='line' id='LC60'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="p">(</span><span class="nf">molokai-grey</span>           <span class="s">&quot;#808080&quot;</span><span class="p">)</span></div><div class='line' id='LC61'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="p">(</span><span class="nf">molokai-grey+2</span>         <span class="s">&quot;#403d3d&quot;</span><span class="p">)</span></div><div class='line' id='LC62'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="p">(</span><span class="nf">molokai-grey+3</span>         <span class="s">&quot;#4c4745&quot;</span><span class="p">)</span></div><div class='line' id='LC63'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="p">(</span><span class="nf">molokai-grey+5</span>         <span class="s">&quot;#232526&quot;</span><span class="p">)</span></div><div class='line' id='LC64'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="p">(</span><span class="nf">molokai-bg</span>             <span class="s">&quot;#1b1d1e&quot;</span><span class="p">)</span></div><div class='line' id='LC65'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="p">(</span><span class="nf">molokai-grey+10</span>        <span class="s">&quot;#080808&quot;</span><span class="p">)</span></div><div class='line' id='LC66'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="p">(</span><span class="nf">molokai-dark</span>           <span class="s">&quot;#000000&quot;</span><span class="p">)</span></div><div class='line' id='LC67'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="p">(</span><span class="nf">molokai-base01</span>         <span class="s">&quot;#465457&quot;</span><span class="p">)</span></div><div class='line' id='LC68'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="p">(</span><span class="nf">molokai-base02</span>         <span class="s">&quot;#455354&quot;</span><span class="p">)</span></div><div class='line' id='LC69'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="p">(</span><span class="nf">molokai-base03</span>         <span class="s">&quot;#293739&quot;</span><span class="p">)</span></div><div class='line' id='LC70'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="p">(</span><span class="nf">molokai-dodgerblue</span>     <span class="s">&quot;#13354a&quot;</span><span class="p">))</span></div><div class='line' id='LC71'>&nbsp;&nbsp;<span class="p">(</span><span class="nf">custom-theme-set-faces</span></div><div class='line' id='LC72'>&nbsp;&nbsp;&nbsp;<span class="ss">&#39;molokai</span></div><div class='line' id='LC73'><br/></div><div class='line' id='LC74'>&nbsp;&nbsp;&nbsp;<span class="c1">;; base</span></div><div class='line' id='LC75'>&nbsp;&nbsp;&nbsp;<span class="o">`</span><span class="p">(</span><span class="nf">default</span> <span class="p">((</span><span class="nf">t</span> <span class="p">(</span><span class="nf">:background</span> <span class="o">,</span><span class="nv">molokai-bg</span> <span class="nv">:foreground</span> <span class="o">,</span><span class="nv">molokai-fg</span><span class="p">))))</span></div><div class='line' id='LC76'>&nbsp;&nbsp;&nbsp;<span class="o">`</span><span class="p">(</span><span class="nf">cursor</span> <span class="p">((</span><span class="nf">t</span> <span class="p">(</span><span class="nf">:background</span> <span class="o">,</span><span class="nv">molokai-fg</span> <span class="nv">:foreground</span> <span class="o">,</span><span class="nv">molokai-bg</span><span class="p">))))</span></div><div class='line' id='LC77'>&nbsp;&nbsp;&nbsp;<span class="o">`</span><span class="p">(</span><span class="nf">fringe</span> <span class="p">((</span><span class="nf">t</span> <span class="p">(</span><span class="nf">:foreground</span> <span class="o">,</span><span class="nv">molokai-base02</span> <span class="nv">:background</span> <span class="o">,</span><span class="nv">molokai-bg</span><span class="p">))))</span></div><div class='line' id='LC78'>&nbsp;&nbsp;&nbsp;<span class="o">`</span><span class="p">(</span><span class="nf">highlight</span> <span class="p">((</span><span class="nf">t</span> <span class="p">(</span><span class="nf">:background</span> <span class="o">,</span><span class="nv">molokai-grey</span><span class="p">))))</span></div><div class='line' id='LC79'>&nbsp;&nbsp;&nbsp;<span class="o">`</span><span class="p">(</span><span class="nf">region</span> <span class="p">((</span><span class="nf">t</span> <span class="p">(</span><span class="nf">:background</span>  <span class="o">,</span><span class="nv">molokai-grey+2</span><span class="p">))</span></div><div class='line' id='LC80'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="p">(</span><span class="nf">t</span> <span class="nv">:inverse-video</span> <span class="nv">t</span><span class="p">)))</span></div><div class='line' id='LC81'>&nbsp;&nbsp;&nbsp;<span class="o">`</span><span class="p">(</span><span class="nf">warning</span> <span class="p">((</span><span class="nf">t</span> <span class="p">(</span><span class="nf">:foreground</span> <span class="o">,</span><span class="nv">molokai-palevioletred</span> <span class="nv">:weight</span> <span class="nv">bold</span><span class="p">))))</span></div><div class='line' id='LC82'><br/></div><div class='line' id='LC83'>&nbsp;&nbsp;&nbsp;<span class="c1">;; font lock</span></div><div class='line' id='LC84'>&nbsp;&nbsp;&nbsp;<span class="o">`</span><span class="p">(</span><span class="nf">font-lock-builtin-face</span> <span class="p">((</span><span class="nf">t</span> <span class="p">(</span><span class="nf">:foreground</span> <span class="o">,</span><span class="nv">molokai-chartreuse</span><span class="p">))))</span></div><div class='line' id='LC85'>&nbsp;&nbsp;&nbsp;<span class="o">`</span><span class="p">(</span><span class="nf">font-lock-comment-face</span> <span class="p">((</span><span class="nf">t</span> <span class="p">(</span><span class="nf">:foreground</span> <span class="o">,</span><span class="nv">molokai-base01</span><span class="p">))))</span></div><div class='line' id='LC86'>&nbsp;&nbsp;&nbsp;<span class="o">`</span><span class="p">(</span><span class="nf">font-lock-comment-delimiter-face</span> <span class="p">((</span><span class="nf">t</span> <span class="p">(</span><span class="nf">:foreground</span> <span class="o">,</span><span class="nv">molokai-base01</span><span class="p">))))</span></div><div class='line' id='LC87'>&nbsp;&nbsp;&nbsp;<span class="o">`</span><span class="p">(</span><span class="nf">font-lock-constant-face</span> <span class="p">((</span><span class="nf">t</span> <span class="p">(</span><span class="nf">:foreground</span> <span class="o">,</span><span class="nv">molokai-purple</span><span class="p">))))</span></div><div class='line' id='LC88'>&nbsp;&nbsp;&nbsp;<span class="o">`</span><span class="p">(</span><span class="nf">font-lock-doc-string-face</span> <span class="p">((</span><span class="nf">t</span> <span class="p">(</span><span class="nf">:foreground</span> <span class="o">,</span><span class="nv">molokai-darkgoldenrod</span><span class="p">))))</span></div><div class='line' id='LC89'>&nbsp;&nbsp;&nbsp;<span class="o">`</span><span class="p">(</span><span class="nf">font-lock-function-name-face</span> <span class="p">((</span><span class="nf">t</span> <span class="p">(</span><span class="nf">:foreground</span> <span class="o">,</span><span class="nv">molokai-chartreuse</span><span class="p">))))</span></div><div class='line' id='LC90'>&nbsp;&nbsp;&nbsp;<span class="o">`</span><span class="p">(</span><span class="nf">font-lock-keyword-face</span> <span class="p">((</span><span class="nf">t</span> <span class="p">(</span><span class="nf">:foreground</span> <span class="o">,</span><span class="nv">molokai-pink</span> <span class="nv">:weight</span> <span class="nv">bold</span><span class="p">))))</span></div><div class='line' id='LC91'>&nbsp;&nbsp;&nbsp;<span class="o">`</span><span class="p">(</span><span class="nf">font-lock-negation-char-face</span> <span class="p">((</span><span class="nf">t</span> <span class="p">(</span><span class="nf">:foreground</span> <span class="o">,</span><span class="nv">molokai-wine</span><span class="p">))))</span></div><div class='line' id='LC92'>&nbsp;&nbsp;&nbsp;<span class="o">`</span><span class="p">(</span><span class="nf">font-lock-preprocessor-face</span> <span class="p">((</span><span class="nf">t</span> <span class="p">(</span><span class="nf">:inherit</span> <span class="p">(</span><span class="nf">font-lock-builtin-face</span><span class="p">)))))</span></div><div class='line' id='LC93'>&nbsp;&nbsp;&nbsp;<span class="o">`</span><span class="p">(</span><span class="nf">font-lock-regexp-grouping-backslash</span> <span class="p">((</span><span class="nf">t</span> <span class="p">(</span><span class="nf">:inherit</span> <span class="p">(</span><span class="nf">bold</span><span class="p">)))))</span></div><div class='line' id='LC94'>&nbsp;&nbsp;&nbsp;<span class="o">`</span><span class="p">(</span><span class="nf">font-lock-regexp-grouping-construct</span> <span class="p">((</span><span class="nf">t</span> <span class="p">(</span><span class="nf">:inherit</span> <span class="p">(</span><span class="nf">bold</span><span class="p">)))))</span></div><div class='line' id='LC95'>&nbsp;&nbsp;&nbsp;<span class="o">`</span><span class="p">(</span><span class="nf">font-lock-string-face</span> <span class="p">((</span><span class="nf">t</span> <span class="p">(</span><span class="nf">:foreground</span> <span class="o">,</span><span class="nv">molokai-darkgoldenrod</span><span class="p">))))</span></div><div class='line' id='LC96'>&nbsp;&nbsp;&nbsp;<span class="o">`</span><span class="p">(</span><span class="nf">font-lock-type-face</span> <span class="p">((</span><span class="nf">t</span> <span class="p">(</span><span class="nf">:foreground</span> <span class="o">,</span><span class="nv">molokai-blue</span> <span class="nv">:weight</span> <span class="nv">bold</span><span class="p">))))</span></div><div class='line' id='LC97'>&nbsp;&nbsp;&nbsp;<span class="o">`</span><span class="p">(</span><span class="nf">font-lock-variable-name-face</span> <span class="p">((</span><span class="nf">t</span> <span class="p">(</span><span class="nf">:foreground</span> <span class="o">,</span><span class="nv">molokai-orange</span><span class="p">))))</span></div><div class='line' id='LC98'>&nbsp;&nbsp;&nbsp;<span class="o">`</span><span class="p">(</span><span class="nf">font-lock-warning-face</span> <span class="p">((</span><span class="nf">t</span> <span class="p">(</span><span class="nf">:foreground</span> <span class="o">,</span><span class="nv">molokai-palevioletred</span> <span class="nv">:weight</span> <span class="nv">bold</span><span class="p">))))</span></div><div class='line' id='LC99'><br/></div><div class='line' id='LC100'>&nbsp;&nbsp;&nbsp;<span class="c1">;; mode line</span></div><div class='line' id='LC101'>&nbsp;&nbsp;&nbsp;<span class="o">`</span><span class="p">(</span><span class="nf">mode-line</span> <span class="p">((</span><span class="nf">t</span> <span class="p">(</span><span class="nf">:foreground</span> <span class="o">,</span><span class="nv">molokai-fg</span></div><div class='line' id='LC102'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="nv">:background</span> <span class="o">,</span><span class="nv">molokai-base03</span></div><div class='line' id='LC103'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="nv">:box</span> <span class="nv">nil</span><span class="p">))))</span></div><div class='line' id='LC104'>&nbsp;&nbsp;&nbsp;<span class="o">`</span><span class="p">(</span><span class="nf">mode-line-buffer-id</span> <span class="p">((</span><span class="nf">t</span> <span class="p">(</span><span class="nf">:weight</span> <span class="nv">bold</span><span class="p">))))</span></div><div class='line' id='LC105'>&nbsp;&nbsp;&nbsp;<span class="o">`</span><span class="p">(</span><span class="nf">mode-line-inactive</span> <span class="p">((</span><span class="nf">t</span> <span class="p">(</span><span class="nf">:foreground</span> <span class="o">,</span><span class="nv">molokai-fg</span></div><div class='line' id='LC106'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="nv">:background</span> <span class="o">,</span><span class="nv">molokai-base02</span></div><div class='line' id='LC107'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="nv">:box</span> <span class="nv">nil</span><span class="p">))))</span></div><div class='line' id='LC108'><br/></div><div class='line' id='LC109'>&nbsp;&nbsp;&nbsp;<span class="c1">;; search</span></div><div class='line' id='LC110'>&nbsp;&nbsp;&nbsp;<span class="o">`</span><span class="p">(</span><span class="nf">isearch</span> <span class="p">((</span><span class="nf">t</span> <span class="p">(</span><span class="nf">:foreground</span> <span class="o">,</span><span class="nv">molokai-dark</span> <span class="nv">:background</span> <span class="o">,</span><span class="nv">molokai-wheat</span> <span class="nv">:weight</span> <span class="nv">bold</span><span class="p">))))</span></div><div class='line' id='LC111'>&nbsp;&nbsp;&nbsp;<span class="o">`</span><span class="p">(</span><span class="nf">isearch-fail</span> <span class="p">((</span><span class="nf">t</span> <span class="p">(</span><span class="nf">:foreground</span> <span class="o">,</span><span class="nv">molokai-wine</span> <span class="nv">:background</span> <span class="o">,</span><span class="nv">molokai-darkwine</span><span class="p">))))</span></div><div class='line' id='LC112'><br/></div><div class='line' id='LC113'>&nbsp;&nbsp;&nbsp;<span class="c1">;; linum-mode</span></div><div class='line' id='LC114'>&nbsp;&nbsp;&nbsp;<span class="o">`</span><span class="p">(</span><span class="nf">linum</span> <span class="p">((</span><span class="nf">t</span> <span class="p">(</span><span class="nf">:foreground</span> <span class="o">,</span><span class="nv">molokai-grey-2</span> <span class="nv">:background</span> <span class="o">,</span><span class="nv">molokai-grey+5</span><span class="p">))))</span></div><div class='line' id='LC115'><br/></div><div class='line' id='LC116'>&nbsp;&nbsp;&nbsp;<span class="c1">;; hl-line-mode</span></div><div class='line' id='LC117'>&nbsp;&nbsp;&nbsp;<span class="o">`</span><span class="p">(</span><span class="nf">hl-line-face</span> <span class="p">((</span><span class="o">,</span><span class="nv">class</span> <span class="p">(</span><span class="nf">:background</span> <span class="o">,</span><span class="nv">molokai-grey+5</span><span class="p">))</span> <span class="p">(</span><span class="nf">t</span> <span class="nv">:weight</span> <span class="nv">bold</span><span class="p">)))</span></div><div class='line' id='LC118'>&nbsp;&nbsp;&nbsp;<span class="o">`</span><span class="p">(</span><span class="nf">hl-line</span> <span class="p">((</span><span class="o">,</span><span class="nv">class</span> <span class="p">(</span><span class="nf">:background</span> <span class="o">,</span><span class="nv">molokai-grey+5</span><span class="p">))</span> <span class="p">(</span><span class="nf">t</span> <span class="nv">:weight</span> <span class="nv">bold</span><span class="p">)))</span></div><div class='line' id='LC119'><br/></div><div class='line' id='LC120'>&nbsp;&nbsp;&nbsp;<span class="c1">;; TODO</span></div><div class='line' id='LC121'>&nbsp;&nbsp;&nbsp;<span class="c1">;; ido-mode</span></div><div class='line' id='LC122'>&nbsp;&nbsp;&nbsp;<span class="c1">;; flycheck</span></div><div class='line' id='LC123'>&nbsp;&nbsp;&nbsp;<span class="c1">;; show-paren</span></div><div class='line' id='LC124'>&nbsp;&nbsp;&nbsp;<span class="c1">;; rainbow-delimiters</span></div><div class='line' id='LC125'>&nbsp;&nbsp;&nbsp;<span class="c1">;; highlight-symbols</span></div><div class='line' id='LC126'>&nbsp;&nbsp;&nbsp;<span class="p">))</span></div><div class='line' id='LC127'><br/></div><div class='line' id='LC128'><span class="p">(</span><span class="nf">defcustom</span> <span class="nv">molokai-theme-kit</span> <span class="nv">nil</span></div><div class='line' id='LC129'>&nbsp;&nbsp;<span class="s">&quot;Non-nil means load molokai-theme-kit UI component&quot;</span></div><div class='line' id='LC130'>&nbsp;&nbsp;<span class="nv">:type</span> <span class="ss">&#39;boolean</span></div><div class='line' id='LC131'>&nbsp;&nbsp;<span class="nv">:group</span> <span class="ss">&#39;molokai-theme</span><span class="p">)</span></div><div class='line' id='LC132'><br/></div><div class='line' id='LC133'><span class="p">(</span><span class="nf">defcustom</span> <span class="nv">molokai-theme-kit-file</span></div><div class='line' id='LC134'>&nbsp;&nbsp;<span class="p">(</span><span class="nf">concat</span> <span class="p">(</span><span class="nf">file-name-directory</span></div><div class='line' id='LC135'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="p">(</span><span class="k">or </span><span class="p">(</span><span class="nf">buffer-file-name</span><span class="p">)</span> <span class="nv">load-file-name</span><span class="p">))</span></div><div class='line' id='LC136'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="s">&quot;molokai-theme-kit.el&quot;</span><span class="p">)</span></div><div class='line' id='LC137'>&nbsp;&nbsp;<span class="s">&quot;molokai-theme-kit-file&quot;</span></div><div class='line' id='LC138'>&nbsp;&nbsp;<span class="nv">:type</span> <span class="ss">&#39;string</span></div><div class='line' id='LC139'>&nbsp;&nbsp;<span class="nv">:group</span> <span class="ss">&#39;molokai-theme</span><span class="p">)</span></div><div class='line' id='LC140'><br/></div><div class='line' id='LC141'><span class="p">(</span><span class="k">if </span><span class="p">(</span><span class="k">and </span><span class="nv">molokai-theme-kit</span></div><div class='line' id='LC142'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="p">(</span><span class="nf">file-exists-p</span> <span class="nv">molokai-theme-kit-file</span><span class="p">))</span></div><div class='line' id='LC143'>&nbsp;&nbsp;&nbsp;&nbsp;<span class="p">(</span><span class="nf">load-file</span> <span class="nv">molokai-theme-kit-file</span><span class="p">))</span></div><div class='line' id='LC144'><br/></div><div class='line' id='LC145'><span class="c1">;;;###autoload</span></div><div class='line' id='LC146'><span class="p">(</span><span class="k">and </span><span class="nv">load-file-name</span></div><div class='line' id='LC147'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="p">(</span><span class="nf">boundp</span> <span class="ss">&#39;custom-theme-load-path</span><span class="p">)</span></div><div class='line' id='LC148'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="p">(</span><span class="nf">add-to-list</span> <span class="ss">&#39;custom-theme-load-path</span></div><div class='line' id='LC149'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="p">(</span><span class="nf">file-name-as-directory</span></div><div class='line' id='LC150'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="p">(</span><span class="nf">file-name-directory</span> <span class="nv">load-file-name</span><span class="p">))))</span></div><div class='line' id='LC151'><br/></div><div class='line' id='LC152'><span class="p">(</span><span class="nf">provide-theme</span> <span class="ss">&#39;molokai</span><span class="p">)</span></div><div class='line' id='LC153'><br/></div><div class='line' id='LC154'><span class="c1">;; Local Variables:</span></div><div class='line' id='LC155'><span class="c1">;; no-byte-compile: t</span></div><div class='line' id='LC156'><span class="c1">;; End:</span></div><div class='line' id='LC157'><br/></div><div class='line' id='LC158'><span class="c1">;;; molokai-theme.el ends here</span></div></pre></div></td>
          </tr>
        </table>
  </div>

  </div>
</div>

<a href="#jump-to-line" rel="facebox[.linejump]" data-hotkey="l" class="js-jump-to-line" style="display:none">Jump to Line</a>
<div id="jump-to-line" style="display:none">
  <form accept-charset="UTF-8" class="js-jump-to-line-form">
    <input class="linejump-input js-jump-to-line-field" type="text" placeholder="Jump to line&hellip;" autofocus>
    <button type="submit" class="button">Go</button>
  </form>
</div>

        </div>

      </div><!-- /.repo-container -->
      <div class="modal-backdrop"></div>
    </div><!-- /.container -->
  </div><!-- /.site -->


    </div><!-- /.wrapper -->

      <div class="container">
  <div class="site-footer">
    <ul class="site-footer-links right">
      <li><a href="https://status.github.com/">Status</a></li>
      <li><a href="http://developer.github.com">API</a></li>
      <li><a href="http://training.github.com">Training</a></li>
      <li><a href="http://shop.github.com">Shop</a></li>
      <li><a href="/blog">Blog</a></li>
      <li><a href="/about">About</a></li>

    </ul>

    <a href="/">
      <span class="mega-octicon octicon-mark-github" title="GitHub"></span>
    </a>

    <ul class="site-footer-links">
      <li>&copy; 2014 <span title="0.02797s from github-fe128-cp1-prd.iad.github.net">GitHub</span>, Inc.</li>
        <li><a href="/site/terms">Terms</a></li>
        <li><a href="/site/privacy">Privacy</a></li>
        <li><a href="/security">Security</a></li>
        <li><a href="/contact">Contact</a></li>
    </ul>
  </div><!-- /.site-footer -->
</div><!-- /.container -->


    <div class="fullscreen-overlay js-fullscreen-overlay" id="fullscreen_overlay">
  <div class="fullscreen-container js-fullscreen-container">
    <div class="textarea-wrap">
      <textarea name="fullscreen-contents" id="fullscreen-contents" class="fullscreen-contents js-fullscreen-contents" placeholder="" data-suggester="fullscreen_suggester"></textarea>
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
      <a href="#" class="octicon octicon-remove-close close js-ajax-error-dismiss"></a>
      Something went wrong with that request. Please try again.
    </div>

  </body>
</html>


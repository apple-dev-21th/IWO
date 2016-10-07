<div class="about-container">
	<div class="fa fa-times close-icon"></div>
	<div class="overlay-content"></div>
	<div class="margintop"></div>
	<img class="icon-title" src="">
	<div class="content">

		<div class="title-version">
			<a data-toggle="tooltip" data-placement="top" title=<%= i18n.__("Changelog") %> id='changelog'><%= App.settings.version %> "<%= App.settings.releaseName %>" Beta </a>
			<% if(App.git) { %>
				- <small><i><%= App.git.branch %> (<a class="links" href="https://git.iwo.io/iwo/desktop/commit/<%= App.git.commit %>"><%= App.git.commit.slice(0,8) %></a>)</i></small>
			<% } %>
		</div>

		<div class="title-issue">
			<a><%= i18n.__("Report an issue") %></a>
		</div>

		<div class="text-about">
			<div class="full-text">
				
			</div>
		</div>

		<div class="icons_social">
			
		</div>

		<div class="last-line">
			<%= i18n.__("Made with") %> <span style="color:#e74c3c;">&#10084;</span> <%= i18n.__("by a bunch of geeks from All Around The World") %>
		</div>

	</div>
    <div class="changelog-overlay">
        <div class="title"><%=i18n.__("Changelog")%></div>
        <div class="changelog-text"></div>    
    </div>
</div>
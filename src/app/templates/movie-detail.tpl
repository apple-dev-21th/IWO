<%  
if(typeof backdrop === "undefined"){ backdrop = ""; }; 
if(typeof synopsis === "undefined"){ synopsis = "Synopsis not available."; }; 
if(typeof runtime === "undefined"){ runtime = "N/A"; };
for(var i = 0; i < genre.length; i++){ genre[i] = i18n.__(genre[i]); };
%>

<div data-bgr="<%= backdrop %>" class="backdrop"></div>
<div class="backdrop-overlay"></div>

<div class="fa fa-times close-icon"></div>

<section class="poster-box">
	<img src="images/posterholder.png" data-cover="<%= image %>" class="mcover-image" />
</section>

<section class="content-box">

	<div class="meta-container">
		<div class="title"><%= title %></div>

		<div class="metadatas">
			<div class="metaitem"><%= year %></div>
			<div class="dot"></div>
			<div class="metaitem"><%= duration %></div>
			<div class="dot"></div>
			<div class="metaitem"><%= genre.join(" / ") %></div>				     
			<div class="dot"></div>
			<div data-toggle="tooltip" data-placement="top" title="<%=i18n.__("Open IMDb page") %>" class="movie-imdb-link"></div>
			<div class="dot"></div>
			<div class="rating-container">
				<div class="star-container" data-toggle="tooltip" data-placement="right" title="<%= rating %>/10">
				<% var p_rating = Math.round(rating) / 2; %>
				   <% for (var i = 1; i <= Math.floor(p_rating); i++) { %>
							<i class="fa fa-star rating-star"></i>
						<% }; %>
						<% if (p_rating % 1 > 0) { %>
							<span class = "fa-stack rating-star-half-container">
								<i class="fa fa-star fa-stack-1x rating-star-half-empty"></i>
								<i class="fa fa-star-half fa-stack-1x rating-star-half"></i>
							</span>
						<% }; %>
						<% for (var i = Math.ceil(p_rating); i < 5; i++) { %>
							<i class="fa fa-star rating-star-empty"></i>
					<% }; %>
				</div>
				<div class="number-container hidden"><%= rating %> <em>/10</em></div>
			</div>
			<div data-toogle="tooltip" data-placement="left" title="<%=i18n.__("Update link") %>" class="fa fa-magnet magnet-link"></div>
			<div data-toggle="tooltip" data-placement="left" title="<%=i18n.__("Update link") %>" class="fa fa-circle loading-link"></div>
		</div>

		<div class="overview"><%= synopsis %></div>
	</div>

	<div class="bottom-container">

		<div class="favourites-toggle"><%=i18n.__("Add to bookmarks") %></div>
		<div class="watched-toggle"><%=i18n.__("Not Seen") %></div>
		<div class="flag-container">
			<div class="sub-flag-icon flag none" data-lang="none" title="<%= i18n.__("Disabled") %>"></div>
		</div>
		
		<br>
		
		<div class="button dropup" id="player-chooser"></div>
		
		<div class="movie-quality-container">
				
			<% if (link_type === "1") { %>
				<div data-toogle="tooltip" data-placement="top" title="720p" class="q720">720p</div>
			<% }else if (link_type === "2") { %>
				<div data-toogle="tooltip" data-placement="top" title="1080p" class="q720">1080p</div>
			<% } else { %>HDRip<% } %> 
			
		</div>

	</div>
</section>
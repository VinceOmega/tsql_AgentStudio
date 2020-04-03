/****** Script for inserting descriptions for pages  ******/


/* TEMPLATE FOR DOING USEFUL STUFF SAFELY */
BEGIN TRAN
BEGIN TRY


    /* DO USEFUL STUFF HERE */

	SELECT *
	FROM AgentStudio.ControlPanel.Pages

		/* Pages - START */

			/* Dashboard */
			UPDATE Agentstudio.ControlPanel.Pages
				SET PageDescription = RTRIM( LTRIM( '<p>The Dashboard is where you will see new updates and important alerts related to your Agent Studio website.</p>' ) )

			WHERE Id = 380;

			/* Homepage */
			UPDATE Agentstudio.ControlPanel.Pages
				SET PageDescription = RTRIM( LTRIM( '<p class="desc">Choose the content type and placement for each box that appears on your homepage from the dropdown.</p>
									<p class="desc">You can also create <a href="link::Announcements" title="Create Homepage Content" class="primary_link"><strong>Custom Content</strong></a> for your homepage, which is 1,100 pixels wide (a parameter to keep in mind for custom content to appear properly on your website).</p>
									<p class="desc"><strong>Note:</strong></p>
									<p class="desc">Content sections marked as "Hidden" indicate that these pages of the site are set as invisible (by clicking the eye to right of the page title, under controls) in the <a href="link::Pages" title="Pages">Pages</a> section of the control panel, and will not appear on the front end of this website.</p>
									<p class="desc">Navigate to the <a href="link::Pages" title="Pages">Pages</a> section of your control panel and mark these pages visible to re-enable them for front end display.</p>' ) )

			WHERE Id = 381;

			/* Announcements */
			UPDATE Agentstudio.ControlPanel.Pages
				SET PageDescription = RTRIM( LTRIM( '<a href="link::CreateAnnouncement" title="Create New Content" class="buttons fl_right">Create New Content</a>
										<p>Create and edit content that will appear on your website''s homepage.</p>
										<p>Once you have created new content for your homepage, it can be added to your homepage through the <strong><a href="link::HomePage" title="Arrange Homepage" class="primary_link">Arrange Homepage</a></strong> section of the control panel.</p>' ) )

			WHERE Id = 382;

			/* Create Announcements */
			UPDATE Agentstudio.ControlPanel.Pages
				SET PageDescription = RTRIM( LTRIM( '<p>Fill out the title and the body of your content below.</p>' ) )

			WHERE Id = 383;

			/* Edit Announcement */
			UPDATE Agentstudio.ControlPanel.Pages
				SET PageDescription = RTRIM( LTRIM( '<p>Fill out the title and the body of your content below.</p>' ) )

			WHERE Id = 384;

			/* Slideshows */
			UPDATE Agentstudio.ControlPanel.Pages
				SET PageDescription = RTRIM( LTRIM( '<p>Turn your custom slideshow on or off (this will replace the default slideshow on the homepage).</p> 
													<p>Create slideshows that can be used on your site''s homepage:</p>' ) )

			WHERE Id = 385;

			/* Content Feeds */
			UPDATE Agentstudio.ControlPanel.Pages
				SET PageDescription = RTRIM( LTRIM( '' ) )

			WHERE Id = 386;

			/* Affiliates */
			UPDATE AgentStudio.ControlPanel.Pages
				SET PageDescription = RTRIM( LTRIM( '<p>Add your co-branded websites or booking links. Co-branded websites or bookling links can be obtained from suppliers you work with. Not all suppliers offer these, but if they do it is a way for you to get commission for customer bookings that are made with the supplier, yet originated from your website. Contact your preferred supplier for more information on their co-branded website or booking link options.</p>' ) )

			WHERE Id = 387;

			/* Create Affiliates */
			UPDATE Agentstudio.ControlPanel.Pages
				SET PageDescription = RTRIM( LTRIM( '<p>ADD INSTRUCTIONS HERE?</p>' ) )

			WHERE Id = 388;

			/* Edit Affiliates */
			UPDATE Agentstudio.ControlPanel.Pages
				SET PageDescription = RTRIM( LTRIM( '<p>ADD INSTRUCTIONS HERE?</p>' ) )

			WHERE Id = 389;

			/* Order Affiliates */
			UPDATE Agentstudio.ControlPanel.Pages
				SET PageDescription = RTRIM( LTRIM( '<p>Drag and drop the links below to organize your booking links.</p>' ) )

			WHERE Id = 390;

			/* Pages */
			UPDATE Agentstudio.ControlPanel.Pages
				SET PageDescription = RTRIM( LTRIM( '<p>The Site Pages section allows you to manage the content pages on your website. Create, edit, and order your website''s content pages and main navigation pages. You can add up to 10 main navigation pages, also known as parent pages.</p>
													<p>Public main navigation pages appear in your website''s top navigation bar and it''s dropdowns. Order your pages by dragging and dropping the hand icons. Change the visibility of your pages by clicking the eye icons. Invisible pages do not appear in your navigation, but still remain active on your site, and are accessible via the page''s URL. To edit a page, click on its title.</p>' ) )

			WHERE Id = 391;

			/* Create Page */
			UPDATE Agentstudio.ControlPanel.Pages
				SET PageDescription = RTRIM( LTRIM( '<p>Create your own custom pages.</p><br>
													<p>If you create a <strong>Parent Page</strong>, also known as a main navigation page, the page is made <strong>Private</strong> by default and must be made <strong>Public</strong> under the <a href="link::ManageNavigation" alt="Manage Top Nav">Manage Top Nav</a> section to become available on the main navigation of your website. This is an Elite subscription feature, only.</p><br>' ) )

			WHERE Id = 392;

			/* Edit Page */
			UPDATE Agentstudio.ControlPanel.Pages
				SET PageDescription = RTRIM( LTRIM( '<p>Create your own custom pages.</p><br>
													<p>If you create a <strong>Parent Page</strong>, also known as a main navigation page, the page is made <strong>Private</strong> by default and must be made <strong>Public</strong> under the <a href="link::ManageNavigation" alt="Manage Top Nav">Manage Top Nav</a> section to become available on the main navigation of your website. This is an Elite subscription feature, only.</p><br>' ) )

			WHERE Id = 393;

			/* Manage Navigation */
			UPDATE Agentstudio.ControlPanel.Pages
				SET PageDescription = RTRIM( LTRIM( '<p>This is where you''ll determine which pages appear in your top Navigation.</p>
						<p>Drag and drop your pages below to decide which pages appear in your main navigation and which are private. Your top navigation pages will appear in the order your have placed them.</p>
						<p>You can have up to 10 pages on your top naviation.</p>' ) )

			WHERE Id = 394;

			/* Blog Posts */
			UPDATE Agentstudio.ControlPanel.Pages
				SET PageDescription = RTRIM( LTRIM( '<p>Create your Blog Post.</p>' ) )

			WHERE Id = 395;

			/* Create Post */
			UPDATE Agentstudio.ControlPanel.Pages
				SET PageDescription = RTRIM( LTRIM( '<p>ADD INSTRUCTIONS HERE?</p>' ) )

			WHERE Id = 396;

			/* Edit Post */
			UPDATE Agentstudio.ControlPanel.Pages
				SET PageDescription = RTRIM( LTRIM( '<p>ADD INSTRUCTIONS HERE?</p>' ) )

			WHERE Id = 397;

			/* Import Post */
			UPDATE Agentstudio.ControlPanel.Pages
				SET PageDescription = RTRIM( LTRIM( '<p>Import your Wordpress blog by uploading the XML file of your blog posts from your computer.  <em>(<small><a href="" title="How do I import my Wordpress blog?" rel="lightbox[import 1080 800]" class="primary_link">How do I import my Wordpress blog?</a></small>)</em></p>
							<p>Note: Updating your WordPress Blog does not automatically update your Blog on your Agent Studio website.</p>' ) )

			WHERE Id = 398;

			/* Post Category */
			UPDATE Agentstudio.ControlPanel.Pages
				SET PageDescription = RTRIM( LTRIM( '<p>Create categories for your Blog Posts.</p>' ) )

			WHERE Id = 399;

			/* Create Category */
			UPDATE Agentstudio.ControlPanel.Pages
				SET PageDescription = RTRIM( LTRIM( '<p>ADD INSTRUCTIONS HERE?</p>' ) )

			WHERE Id = 400;

			/* Edit Category */
			UPDATE Agentstudio.ControlPanel.Pages
				SET PageDescription = RTRIM( LTRIM( '<p>ADD INSTRUCTIONS HERE?</p>' ) )

			WHERE Id = 401;

			/* Post Commnets */
			UPDATE Agentstudio.ControlPanel.Pages
				SET PageDescription = RTRIM( LTRIM( '<p>Manage comments that are made on all your Blog Posts.</p>' ) )

			WHERE Id = 402;

			/* Edit Comment */
			UPDATE Agentstudio.ControlPanel.Pages
				SET PageDescription = RTRIM( LTRIM( '<p>ADD INSTRUCTIONS HERE?</p>' ) )

			WHERE Id = 403;

			/* Appearance */
			UPDATE Agentstudio.ControlPanel.Pages
				SET PageDescription = RTRIM( LTRIM( '<p>ADD INSTRUCTIONS HERE?</p>' ) )

			WHERE Id = 404;

			/* Header */
			UPDATE Agentstudio.ControlPanel.Pages
				SET PageDescription = RTRIM( LTRIM( '<p>Customize your website''s Header configuration. Once you''ve completed your changes click "Save" for the changes to take effect.</p>' ) )

			WHERE Id = 405;

			/* Footer */
			UPDATE Agentstudio.ControlPanel.Pages
				SET PageDescription = RTRIM( LTRIM( '<p>Customize your website''s Footer configuration. Once you''ve completed your changes click "Save" for the changes to take effect.</p>' ) )

			WHERE Id = 406;

			/* Business Info */
			UPDATE Agentstudio.ControlPanel.Pages
				SET PageDescription = RTRIM( LTRIM( '<p>Add or update your agency information.</p>' ) )

			WHERE Id = 407;

			/* Widgets */
			UPDATE Agentstudio.ControlPanel.Pages
				SET PageDescription = RTRIM( LTRIM( '<p>
														This section allows you to add custom forms and/or widgets (such as pop-up Contact Forms, World Clocks or Facebook Pixel) to areas of your website using Javascript code.
														Please follow the directions offered by the provider of the widget or tool you would like to integrate and paste the Javascript code they have supplied into the appropriate field below.
														Remember to click the SAVE WIDGETS button located in the lower right-hand corner of the page to save your entries.
													</p>' ) )

			WHERE Id = 408;

			/* Social Media Channels */
			UPDATE Agentstudio.ControlPanel.Pages
				SET PageDescription = RTRIM( LTRIM( '<p>Add custom &lt;meta&gt;, &lt;style&gt;, &lt;link&gt;, and &lt;script&gt; tags that contain a src or href attribute, into the CUSTOM TAGS field. CUSTOM TAGS entered must have a closing tag or be self closed to be saved. HTML meta tags are not visible to people viewing your site, but can provide special functionalities and can be read by search engines.</p><br>
														<p>Use the HEAD and BODY SCRIPTS to enter JavaScript when the code appears inside of &lt;script&gt;&lt;/script&gt; tags.</p>' ) )

			WHERE Id = 409;

			/* SEO */
			UPDATE Agentstudio.ControlPanel.Pages
				SET PageDescription = RTRIM( LTRIM( '<p class="generalseo--p-intro">
								SEO, short for Search Engine Optimization, is the process of making your Agent Studio website visible by search engines like Google.com, Yahoo.com, and Bing.com.
								Search engines use a process called indexing to collect and store website data. When someone conducts a web search like "travel agents in Philadelphia, PA", a search engine will use their index to quickly scan and return a list of web results that accurately support the user''s search inquiry.
								To help ensure your Agent Studio website is listed as a top web result for credible internet searches, Agent Studio gives website owners SEO Tools and Training to understand and utilize SEO as a targeted website marketing strategy.
								To learn more about SEO, feel free to check out this helpful reference <a href="https://cdn.travalliancemedia.com/docs/4cbc3862-9d10-436c-a7a0-f8e0d794030c/search-engine-optimization-starter-guide.pdf" alt="seo starter guide" title="seo starter guide pdf">guide</a>.
							</p>

							<br>
								<a class="buttons" href="https://cdn.travalliancemedia.com/docs/4cbc3862-9d10-436c-a7a0-f8e0d794030c/search-engine-optimization-starter-guide.pdf" target="_blank">Click here for SEO Guide!</a>
								<p>
									Use the fields below to enter or modify SEO Tags (words or short pharse separted by a comma)
									that will be used by search engines to index your website. Click the SAVE INFO button to save
									your tags. To further optimize your website, be sure to add SEO Meta Tags to individual pages
									of your site by visiting the link::Pages">SITE PAGES</a>
									section of your Control Panel. Select the page title you wish to update and locate the SEO Meta
									Information section to give that page its own title, description and keyword tags!
								</p>
							' ) )

			WHERE Id = 410;

			/* Google Analytics */
			UPDATE Agentstudio.ControlPanel.Pages
				SET PageDescription = RTRIM( LTRIM( '<p>
											Google Analytics is a free measurement tool that allows you to track intelligent data across the websites that you own,
											including page-views, clicks, bounce rates, and total time spent on your site.  Harnessing this data gives you the ability to
											improve website marketing by accurately targeting the deals and products customers are most interested in.
										</p>
										<p>
											Google Analytics is a powerful tool that is compatible with ALL Agent Studio websites.  Check out our step-by-step tutorial below for instructions
											on how to obtain your Google Analytics Tracking Code.  Or if you already have your tracking code, please enter it into the open field at the bottom
											of this page and then click the SAVE CODE button located at the bottom right-hand corner.
										</p>
										<p>
											After you have successfully connected your Agent Studio website to your Google Analytics Account,
											be sure to check out <a href="https://analytics.google.com/analytics/academy/" title="Google''s Analytics Academy">Google''s Analytics Academy</a>
											for additional support and free online courses!
										</p>' ) )

			WHERE Id = 411;

			/* Domain Manager */
			UPDATE Agentstudio.ControlPanel.Pages
				SET PageDescription = RTRIM( LTRIM( '
													<p>A domain name is used to create a direct website address for your business. It helps represent your company''s online presence and makes it easier to be found online by new and existing customers.</p>
													<p>Domain names can be purchased from Domain Registrars like <a href="https://www.godaddy.com" title="GoDaddy">GoDaddy</a> and are then configured to point or your Agent Studio website.</p>' ) )

			WHERE Id = 412;

			/* Create Domain */
			UPDATE Agentstudio.ControlPanel.Pages
				SET PageDescription = RTRIM( LTRIM( '<p>After you''ve purchased a domain name from a Domain Registrar and pointed it at your Agent Studio website, you can enter it in the field below to apply this new domain name. Changes made at a Domain Registrar can sometimes take 24 to 48 hours to propagate across the web. The time required depends on your Registrar of choice.</p>
													<p>If you receive an error message when saving your domain name, it may not be pointed properly in your Domain Registrar''s system, or the changes may still be propagating. If this happens, please verify your settings at your Domain Registrar or wait a while to try again. <a href="/dns-info.html" title="DNS Setting Information" rel="lightbox[dns 80% 60%] nofollow">Click here</a> if you need to review the technical instructions on how to point your new domain name.</p>' ) )

			WHERE Id = 413;

			/* Edit Domain */
			UPDATE Agentstudio.ControlPanel.Pages
				SET PageDescription = RTRIM( LTRIM( '<p>After you''ve purchased a domain name from a Domain Registrar and pointed it at your Agent Studio website, you can enter it in the field below to apply this new domain name. Changes made at a Domain Registrar can sometimes take 24 to 48 hours to propagate across the web. The time required depends on your Registrar of choice.</p>
													<p>If you receive an error message when saving your domain name, it may not be pointed properly in your Domain Registrar''s system, or the changes may still be propagating. If this happens, please verify your settings at your Domain Registrar or wait a while to try again. <a href="/dns-info.html" title="DNS Setting Information" rel="lightbox[dns 80% 60%] nofollow">Click here</a> if you need to review the technical instructions on how to point your new domain name.<p>' ) )

			WHERE Id = 414;

			/* Booking Manager */
			UPDATE Agentstudio.ControlPanel.Pages
				SET PageDescription = RTRIM( LTRIM( '<p class="primary_link">The Hotel Booking Report Tracker is updated each time a hotel reservation is confirmed online through your Agent Studio Hotel Booking Engine, allowing you to easily identify and manage your client’s prepaid hotel reservations.</p>
													<p class="primary_link">Click on any itinerary number from the table below to view that booking’s complete reservation details and/or to cancel the reservation in full.</p>
													<p class="primary_link">To make changes to an existing reservation or receive reservations assistance, please be sure to contact our Affiliate Reservations Network at 1-800-637-5044. This network is available 24 hours a day, 7 days a week.</p>
													<p class="primary_link">Please note, the Hotel Booking Report Tracker will only display reservation details that are collected and confirmed at the time of booking.  Changes and/or cancellations that are processed by phone with our Affiliate Reservations Network will not be reflected within the tracker.</p>
													<p class="primary_link">For further assistance to use the Hotel Booking Report Tracker, please contact the Agent Studio Hotel Reservations Support Department by email at <a href="mailto:hotelreservations@agentstudio.com" title="hotelreservations@agentstudio.com" targe="_blank">hotelreservations@agentstudio.com</a> or by calling 1-855-270-6835 Monday – Friday 9am – 5pm ET</p>' ) )

			WHERE Id = 415;

			/* Booking Details */
			UPDATE Agentstudio.ControlPanel.Pages
				SET PageDescription = RTRIM( LTRIM( '<p>ADD INSTRUCTIONS HERE?</p>' ) )

			WHERE Id = 416;

			/* Cancel Booking */
			UPDATE Agentstudio.ControlPanel.Pages
				SET PageDescription = RTRIM( LTRIM( '<p>ADD INSTRUCTIONS HERE?</p>' ) )

			WHERE Id = 417;

			/* Commissions */
			UPDATE Agentstudio.ControlPanel.Pages
				SET PageDescription = RTRIM( LTRIM( '<p class="primary_link">The Commission History Report allows you to track commissions paid by Agent Studio towards eligible bookings confirmed online using your Agent Studio Hotel and Cruise Booking Engines.</p>
						<p class="primary_link">Agent Studio Commission Checks are processed and mailed at the end of the next month following the check-out/sail-end date of your eligible hotel/cruise bookings.</p>
						<p class="primary_link"><em>For example, if the booking ends travel between January 1 and January 31, the commission will be included in your February Agent Studio Commission Check and will be mailed on the last business day of February.</em></p>
						<p class="primary_link">If you have multiple bookings complete travel during the same month, Agent Studio will combine those commissions into a single, monthly commission check.</p>
						<p class="primary_link">Agent Studio Commission Checks are processed and mailed according to the Commission Payment Information on file for your Agent Studio Website.
						</p><p class="primary_link">If you have questions regarding your Commission History Report, please contact the Agent Studio Reservations Support Department by email at <a href="mailto:hotelreservations@agentstudio.com" title="hotelreservations@agentstudio.com" targe="_blank">hotelreservations@agentstudio.com</a> or by calling 1-855-270-6835  Monday – Friday 9am – 5pm ET.</p>' ) )

			WHERE Id = 418;

			/* Commissions Payments */
			UPDATE Agentstudio.ControlPanel.Pages
				SET PageDescription = RTRIM( LTRIM( '<p>ADD INSTRUCTIONS HERE?</p>' ) )

			WHERE Id = 419;

			/* Itinerary Builder */
			UPDATE Agentstudio.ControlPanel.Pages
				SET PageDescription = RTRIM( LTRIM( '<p>ADD INSTRUCTIONS HERE?</p>' ) )

			WHERE Id = 420;

			/* Automated Social Manager */
			UPDATE Agentstudio.ControlPanel.Pages
				SET PageDescription = RTRIM( LTRIM( '<p>ADD INSTRUCTIONS HERE?</p>' ) )

			WHERE Id = 421;

			/* Cruise Booking Engine */
			UPDATE Agentstudio.ControlPanel.Pages
				SET PageDescription = RTRIM( LTRIM( '<p>ADD INSTRUCTIONS HERE?</p>' ) )

			WHERE Id = 422;

			/* Marketing Center */
			UPDATE Agentstudio.ControlPanel.Pages
				SET PageDescription = RTRIM( LTRIM( '<p>ADD INSTRUCTIONS HERE?</p>' ) )

			WHERE Id = 423;

			/* Leads */
			UPDATE Agentstudio.ControlPanel.Pages
				SET PageDescription = RTRIM( LTRIM( '<p>Manage and track customer leads submitted via Request a Quote.</p>' ) )

			WHERE Id = 424;

			/* Edit Lead */
			UPDATE Agentstudio.ControlPanel.Pages
				SET PageDescription = RTRIM( LTRIM( '<p>ADD INSTRUCTIONS HERE?</p>' ) )

			WHERE Id = 425;

			/* CRM */
			UPDATE Agentstudio.ControlPanel.Pages
				SET PageDescription = RTRIM( LTRIM( '<p>Manage and track customer leads submitted via your Contact form.</p>' ) )

			WHERE Id = 426;

			/* Create Contact */
			UPDATE Agentstudio.ControlPanel.Pages
				SET PageDescription = RTRIM( LTRIM( '<p>Create a new business contact by completing the form below.  To add this contact to your Agent Studio Marketing Center, be sure the indicator button is blue.  Then click the <strong>CREATE CONTACT</strong> button to save the profile.</p>' ) )

			WHERE Id = 427;

			/* Edit Contact */
			UPDATE Agentstudio.ControlPanel.Pages
				SET PageDescription = RTRIM( LTRIM( '<p>Edit this business contact by updating the fields in the form below.  To add this contact to your Agent Studio Marketing Center, be sure the indicator button is blue.  After your changes have been made, please click the <strong>EDIT CONTACT</strong> button to save the profile.</p>' ) )

			WHERE Id = 428;

			/* Import Contact */
			UPDATE Agentstudio.ControlPanel.Pages
				SET PageDescription = RTRIM( LTRIM( '<p>Import your existing client list.</p> 
													<p>When importing contacts, your spreadsheet can include the following fields:</p> 
													<p><strong>Email, FirstName, LastName, Phone, Fax, Address, Address2, City, Region, PostalCode</strong></p>
													<p>Your spreadsheet''s first row <strong>MUST</strong> contain the headers matching the fields you are providing and those headers must be spelled exactly as listed above. The only field that is <strong>required</strong> is <strong>Email</strong> and only the first sheet found in the spreadsheet will be read. Duplicate email addresses will be skipped.</p>' ) )

			WHERE Id = 429;

			/* Billing Center */
			UPDATE Agentstudio.ControlPanel.Pages
				SET PageDescription = RTRIM( LTRIM( '<p>ADD INSTRUCTIONS HERE?</p>' ) )

			WHERE Id = 430;

			/* Subscription Detail */
			UPDATE Agentstudio.ControlPanel.Pages
				SET PageDescription = RTRIM( LTRIM( '<p>You may change your subscription at any time by utilizing the Change Subscription feature.</p>' ) )

			WHERE Id = 431;

			/* History Detail */
			UPDATE Agentstudio.ControlPanel.Pages
				SET PageDescription = RTRIM( LTRIM( '<p>All payment history associated with your Agent Studio account, including credit card authorization holds, will be logged here for you to review.</p>' ) )

			WHERE Id = 432;

			/* Addon Manager */
			UPDATE Agentstudio.ControlPanel.Pages
				SET PageDescription = RTRIM( LTRIM( '<p>Please visit the Add Credit Card section of your Billling Center to make sure the correct billing informaiton is on file.</p>' ) )

			WHERE Id = 433;

			/* Addon Confirmation */
			UPDATE Agentstudio.ControlPanel.Pages
				SET PageDescription = RTRIM( LTRIM( '<p>ADD INSTRUCTIONS HERE?</p>' ) )

			WHERE Id = 434;

			/* Change Subscription Promo Code */
			UPDATE Agentstudio.ControlPanel.Pages
				SET PageDescription = RTRIM( LTRIM( '<p class="para">Ready to upgrade and take advantage of our new features? <br> Get started by clicking <strong>CONTINUE</strong> below. </p>' ) )

			WHERE Id = 435;

			/* Change Subscription Frequency */
			UPDATE Agentstudio.ControlPanel.Pages
				SET PageDescription = RTRIM( LTRIM( '<p>When purchasing your site directly from Agent Studio, you can choose to be billed Monthly, Semi-Annually, or Annually.  Save 10% when you choose to be billed Semi-Annually and 15% when you choose to be billed Annually.</p>' ) )

			WHERE Id = 436;

			/* Change Subscription Package */
			UPDATE Agentstudio.ControlPanel.Pages
				SET PageDescription = RTRIM( LTRIM( '	<p>Choose a website package that allows you to take advantage of our latest features like Automated Social Media, Itinerary Builder by Travefy, a Cruise Booking Engine and more!  The Elite package gives you access to all of Agent Studio''s features at the best price.</p>
														<p><em><small>Please note, not all host agency partners are utilizing Agent Studio''s full range of features.</small></em></p>' ) )

			WHERE Id = 437;

			/* Change Subscription Summary */
			UPDATE AgentStudio.ControlPanel.Pages
				SET PageDescription = RTRIM( LTRIM( '	<p>Please review your new website subscription.</p>
														<p>Not all host agency partners are utilizing Agent Studio''s full range of features. However, please visit the <a href="link::AddonManager" title="ADD-ON/NEW FEATURES" target="_blank">ADD-ON/NEW FEATURES</a> section of your Control Panel to see which features may be available to you at an additional cost.</p>
														<p>To activate your new website, click <strong>SUBMIT</strong>.</p>' ) )

			WHERE Id = 438;

			/* Change Subscription Complete */
			UPDATE AgentStudio.ControlPanel.Pages
				SET PageDescription = RTRIM( LTRIM( '		<h4>Congratulations!</h4>
															<p>We''re busy upgrading your Agent studio website starting right now. In the next 24-48 business hours, your new website will be made live.</p>' ) )

			WHERE Id = 439;

			/* Users */
			UPDATE AgentStudio.ControlPanel.Pages
				SET PageDescription = RTRIM( LTRIM( '<p>Add up to 5 additional users and assign their roles which will determine what areas users can access within your control panel. Each new user will receive a temporary password to their registered email address, allowing them access into the site''s control panel.</p>' ) )

			WHERE Id = 440;

			/* Create User */
			UPDATE AgentStudio.ControlPanel.Pages
				SET PageDescription = RTRIM( LTRIM( '<p>ADD INSTRUCTIONS HERE?</p>' ) )

			WHERE Id = 441;

			/* Edit User */
			UPDATE AgentStudio.ControlPanel.Pages
				SET PageDescription = RTRIM( LTRIM( '<p>ADD INSTRUCTIONS HERE?</p>' ) )

			WHERE Id = 442;

			/* Change Password */
			UPDATE AgentStudio.ControlPanel.Pages
				SET PageDescription = RTRIM( LTRIM( '<p">Complete the form below to change your user account password. This change will effect your login to <strong>ALL</strong> travAlliancemedia sites for this email address.</p>' ) )

			WHERE Id = 443;

			/* Academy */
			UPDATE AgentStudio.ControlPanel.Pages
				SET PageDescription = RTRIM( LTRIM( '<p>ADD INSTRUCTIONS HERE?</p>' ) )

			WHERE Id = 444;

			/* Registered Course */
			UPDATE AgentStudio.ControlPanel.Pages
				SET PageDescription = RTRIM( LTRIM( '<p>ADD INSTRUCTIONS HERE?</p>' ) )

			WHERE Id = 445;

			/* Help */
			UPDATE AgentStudio.ControlPanel.Pages
				SET PageDescription = RTRIM( LTRIM( '<p>ADD INSTRUCTIONS HERE?</p>' ) )

			WHERE Id = 446;

			/* Delete Post */
			UPDATE AgentStudio.ControlPanel.Pages
				SET PageDescription = RTRIM( LTRIM( '<p>ADD INSTRUCTIONS HERE?</p>' ) )

			WHERE Id = 520;

			/* Delete Category */
			UPDATE AgentStudio.ControlPanel.Pages
				SET PageDescription = RTRIM( LTRIM( '<p>ADD INSTRUCTIONS HERE?</p>' ) )

			WHERE Id = 521;

			/* Delete Affiliate */
			UPDATE AgentStudio.ControlPanel.Pages
				SET PageDescription = RTRIM( LTRIM( '<p>ADD INSTRUCTIONS HERE?</p>' ) )

			WHERE Id = 522;

			/* Delete Announcement */
			UPDATE AgentStudio.ControlPanel.Pages
				SET PageDescription = RTRIM( LTRIM( '<p>ADD INSTRUCTIONS HERE?</p>' ) )

			WHERE Id = 523;

			/* Delete Slideshow */
			UPDATE AgentStudio.ControlPanel.Pages
				SET PageDescription = RTRIM( LTRIM( '<p>ADD INSTRUCTIONS HERE?</p>' ) )

			WHERE Id = 524;

			/* Delete Slideshow Slide */
			UPDATE AgentStudio.ControlPanel.Pages
				SET PageDescription = RTRIM( LTRIM( '<p>ADD INSTRUCTIONS HERE?</p>' ) )

			WHERE Id = 525;

			/* Delete User */
			UPDATE AgentStudio.ControlPanel.Pages
				SET PageDescription = RTRIM( LTRIM( '<p>ADD INSTRUCTIONS HERE?</p>' ) )

			WHERE Id = 526;

			/* Delete Domain */
			UPDATE AgentStudio.ControlPanel.Pages
				SET PageDescription = RTRIM( LTRIM( '<p>ADD INSTRUCTIONS HERE?</p>' ) )

			WHERE Id = 527;

			/* Delete Billing Information */
			UPDATE AgentStudio.ControlPanel.Pages
				SET PageDescription = RTRIM( LTRIM( '<p>ADD INSTRUCTIONS HERE?</p>' ) )

			WHERE Id = 528;

			/* Change Subscription Cancel */
			UPDATE AgentStudio.ControlPanel.Pages
				SET PageDescription = RTRIM( LTRIM( '<p>ADD INSTRUCTIONS HERE?</p>' ) )

			WHERE Id = 529;

			/* Export Contacts */
			UPDATE AgentStudio.ControlPanel.Pages
				SET PageDescription = RTRIM( LTRIM( '<p>ADD INSTRUCTIONS HERE?</p>' ) )

			WHERE Id = 530;

			/* Import Contacts */
			UPDATE AgentStudio.ControlPanel.Pages
				SET PageDescription = RTRIM( LTRIM( '<p>Import your existing client list.</p> 
													<p>When importing contacts, your spreadsheet can include the following fields:</p> 
													<p><strong>Email, FirstName, LastName, Phone, Fax, Address, Address2, City, Region, PostalCode</strong></p>
													<p>Your spreadsheet''s first row <strong>MUST</strong> contain the headers matching the fields you are providing and those headers must be spelled exactly as listed above. The only field that is <strong>required</strong> is <strong>Email</strong> and only the first sheet found in the spreadsheet will be read. Duplicate email addresses will be skipped.</p>' ) )

			WHERE Id = 531;

			/* Delete Contacts */
			UPDATE AgentStudio.ControlPanel.Pages
				SET PageDescription = RTRIM( LTRIM( '<p>ADD INSTRUCTIONS HERE?</p>' ) )

			WHERE Id = 532;

			/* Delete Leads */
			UPDATE AgentStudio.ControlPanel.Pages
				SET PageDescription = RTRIM( LTRIM( '<p>ADD INSTRUCTIONS HERE?</p>' ) )

			WHERE Id = 533;

			/* Delete Page */
			UPDATE AgentStudio.ControlPanel.Pages
				SET PageDescription = RTRIM( LTRIM( '<p>ADD INSTRUCTIONS HERE?</p>' ) )

			WHERE Id = 534;

			/* Create Slide */
			UPDATE AgentStudio.ControlPanel.Pages
				SET PageDescription = RTRIM( LTRIM( '<p>Create and edit slides that you can add to one of your custom homepage slideshows.</p>

							<p>Once you have added your image or video to create a slide, it can be assigned to a slideshow through the <strong><a href="link::Slideshows" title="Arrange Slideshows" class="primary_link">Slideshows</a></strong> section of the control panel.</p>

							<p>Slideshow images/videos should be no smaller than 800x600 pixels in size and the file should be no larger than 5MB. For optimal performance, we recommend that you upload an image file that is 1920x1080 or greater. Eligible slideshow videos must also be hosted on YouTube.</p>' ) ) 

			WHERE Id = 543;

			/* Edit Slide */
			UPDATE AgentStudio.ControlPanel.Pages
				SET PageDescription = RTRIM( LTRIM( '<p>Create and edit slides that you can add to one of your custom homepage slideshows.</p>

							<p>Once you have added your image or video to create a slide, it can be assigned to a slideshow through the <strong><a href="link::Slideshows" title="Arrange Slideshows" class="primary_link">Slideshows</a></strong> section of the control panel.</p>

							<p>Slideshow images/videos should be no smaller than 800x600 pixels in size and the file should be no larger than 5MB. For optimal performance, we recommend that you upload an image file that is 1920x1080 or greater. Eligible slideshow videos must also be hosted on YouTube.</p>' ) ) 

			WHERE Id = 544;

			/* Create Slideshow */
			UPDATE AgentStudio.ControlPanel.Pages
				SET PageDescription = RTRIM( LTRIM( '<p>Name your slide show.</p>' ) )

			WHERE Id = 545;

			/* Edit Slideshow */
			UPDATE AgentStudio.ControlPanel.Pages
				SET PageDescription = RTRIM( LTRIM( '<p>Name your slide show.</p>' ) )

			WHERE Id = 546;

			/* Delete Comments */
			UPDATE AgentStudio.ControlPanel.Pages
				SET PageDescription = RTRIM( LTRIM( '<p>ADD INSTRUCTIONS HERE?</p>' ) )

			WHERE Id = 538;

		/* Pages - END */

	SELECT *
	FROM AgentStudio.ControlPanel.Pages;


	/* LEAVE UNCOMMENTED UNTIL YOU ARE SURE THE USEFUL STUFF WORKS THEN -- AND ONLY THEN -- COMMENT IT OUT */
    ROLLBACK TRAN

    /* UNCOMMENT ONLY WHEN YOU ARE SURE THE USEFUL STUFF WORKS */
    --	COMMIT TRAN


END TRY
BEGIN CATCH
    ROLLBACK TRAN
    /* WHEN AN ERROR OCCURS SHOULD TELL YOU WHERE IN THE USEFUL STUFF THE ERROR HAPPENED SOME DETAIL ABOUT WHY IT SOILED ITSELF */
    PRINT 'AT LINE: ' + CAST(ERROR_LINE() AS varchar(10));
    PRINT ERROR_MESSAGE();
END CATCH

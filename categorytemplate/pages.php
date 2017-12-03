<?php
/*
	Template Name: Demo 
*/
get_header(); ?>

<div class="wrap">
	<div id="primary" class="content-area">
		<main id="main" class="site-main" role="main">
		<div class="list-pages">
			<h1 style="text-align:center; margin-bottom: 20px;"> List Pages </h1>
				<?php 
					$args = array(
						'sort_order' => 'asc',
						'sort_column' => 'post_title'

					);
					$pages = get_pages();
					foreach ($pages as $page) { ?>
						<div class="col-md-6">
							<h3 class="title">
								<a href="<?php echo($page->guid); ?>"> 
									<?php echo ($page->post_title); ?> 
								</a>
							</h3>
						</div>
					<?php } ?>

		</div>
		</main><!-- #main -->
	</div><!-- #primary -->
</div><!-- .wrap -->

<?php get_footer();

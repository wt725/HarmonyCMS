{extend name='base' /}
{block name='main'}
        <!-- content begin -->
        <div id="content" class="no-padding"> 

            <!-- section begin -->
            <section id="section-404" class="no-padding">                
                <div class="container">
                    <div class="image">
                        <img src="/static/common/images/{$codeText}.svg" alt="" width="150" />
                    </div>
                    <h1><?php echo(strip_tags($msg));?></h1>
                    <div class="row">
                        <div class="col-md-6 col-md-offset-1 col-sm-7">
                            <div class="content-404 intro-text margin-top-170">
                                <h2>{$codeText}</h2>
                                <p>页面将在 <span id="wait"><?php echo($wait);?></span> 秒后自动跳转</p>
                                <div class="divider-single"></div>
                            </div>                            
                        </div>
                    </div>
                </div>      
            </section>
            <!-- section close -->   

        </div>
        <!-- content close -->
{/block}
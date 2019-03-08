<?php include_once './cabecalho.php'; ?>
<section id="carrosel">
    <div>
        <div id="carouselExampleIndicators" class="carousel slide" data-ride="carousel">
            <ol class="carousel-indicators">
                <li data-target="#carouselExampleIndicators" data-slide-to="0" class="active"></li>
                <li data-target="#carouselExampleIndicators" data-slide-to="1"></li>
                <li data-target="#carouselExampleIndicators" data-slide-to="2"></li>
            </ol>
            <div class="carousel-inner">
                <div class="carousel-item active">
                    <img src="img/carrousel/img1.jpg" class="d-block w-100" alt="Slider 1">
                </div>
                <div class="carousel-item">
                    <img src="img/carrousel/img3.jpg" class="d-block w-100" alt="Slider 2">
                </div>
                <div class="carousel-item">
                    <img src="img/carrousel/img4.jpg" class="d-block w-100" alt="Slider 3">
                </div>
            </div>
            <a class="carousel-control-prev" href="#carouselExampleIndicators" role="button" data-slide="prev">
                <span class="carousel-control-prev-icon" aria-hidden="true"></span>
                <span class="sr-only">Anterior</span>
            </a>
            <a class="carousel-control-next" href="#carouselExampleIndicators" role="button" data-slide="next">
                <span class="carousel-control-next-icon" aria-hidden="true"></span>
                <span class="sr-only">Próximo</span>
            </a>
        </div>

    </div>
    <article id="conteudo">
        <br>
        <div class="servicos">
            <h1 class="fonte"></h1>		
            <figure class="fig1">
                <img src="img/icones/primeiratroca.png">

            </figure>
            <figure class="fig2">
                <img src="img/icones/fretegratis.png">

            </figure>
            <figure class="fig3">
                <img src="img/icones/entregaexpress.png">
            </figure>
        </div>		
        <br>
        <div id="dest">
            <h1><b>Destaques</b></h1>
        </div>
        <br>
        <br>
        <br>
        <br>	
    </article>
    <div>
        <figure class="figuras">
            <img src="img/destaques/camisa1.jpg">
            <figcaption>
                <a href="camisetas.php">Visualizar Camisa</a>
            </figcaption>
        </figure>
        <figure class="figuras">
            <img src="img/destaques/camisa2.jpg">
            <figcaption>
                <a href="camisetas.php">Visualizar Camisa</a>
            </figcaption>
        </figure>
        <figure class="figuras">
            <img src="img/destaques/camisa2.jpg">
            <figcaption>
                <a href="camisetas.php">Visualizar Camisa</a>
            </figcaption>
        </figure>
    </div>
    <h1><b>____</b></h1>
    <?php include_once './rodape.php'; ?>
<?php

namespace App\Controller;

use Symfony\Bundle\FrameworkBundle\Controller\AbstractController;
use Symfony\Component\HttpFoundation\Response;
use Symfony\Component\Routing\Annotation\Route;

class MonEspaceController extends AbstractController
{
    /**
     * @Route("/mon-espace", name="mon_espace")
     */
    public function goToEspace(): Response
    {
        return $this->render('mon_espace/monEspace.html.twig');
    }
}

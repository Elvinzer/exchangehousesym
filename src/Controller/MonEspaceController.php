<?php

namespace App\Controller;

use Symfony\Component\HttpFoundation\Response;
use Symfony\Component\Routing\Annotation\Route;
use Sensio\Bundle\FrameworkExtraBundle\Configuration\IsGranted;
use Symfony\Bundle\FrameworkBundle\Controller\AbstractController;

class MonEspaceController extends AbstractController
{
    /**
     * @Route("/mon-espace", name="mon_espace")
     * @IsGranted("ROLE_USER")
     */
    public function goToEspace(): Response
    {
        return $this->render('mon_espace/monEspace.html.twig');
    }
}

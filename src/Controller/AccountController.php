<?php
// src/Controller/LuckyController.php
namespace App\Controller;

use Symfony\Component\HttpFoundation\Response;
use Symfony\Component\Routing\Annotation\Route;
use Sensio\Bundle\FrameworkExtraBundle\Configuration\IsGranted;
use Symfony\Bundle\FrameworkBundle\Controller\AbstractController;

class AccountController extends AbstractController
{
    /**
      * @Route("/", name ="mainPage")
      * @IsGranted("ROLE_USER")
      */
    public function mainPage(): Response
    {
        $test = array('coucou');
        $isLogged = false;
        
        // return new Response(
        //     '<html><body>Lucky number: '.$number.'</body></html>'
        // );
        dump($test);
        return $this->render('/index.html.twig', ['test' => $test]);
    }

      /**
      * @Route("/login", name ="loginPage")
      */
      public function login(): Response
      {
          return $this->render('/login.html.twig');
      }

      /**
      * @Route("/rejoindre", name ="creationAccountPage")
      */
      public function creationAccount(): Response
      {
          return $this->render('/creationAccount.html.twig');
      }

      /**
       * Permet de se déconnecter
      * @Route("/logout", name ="account_logout")
      * @return void
      */
      public function logout(){

      }
}
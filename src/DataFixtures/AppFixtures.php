<?php

namespace App\DataFixtures;

use Faker\Factory;

use App\Entity\User;
use Doctrine\Persistence\ObjectManager;
use Doctrine\Bundle\FixturesBundle\Fixture;
use Symfony\Component\Security\Core\Encoder\UserPasswordEncoderInterface;

class AppFixtures extends Fixture
{
    private $encoder;
    public function __construct(UserPasswordEncoderInterface $encoder)
    {
        $this->encoder = $encoder;
    }
    public function load(ObjectManager $manager)
    {
        $faker = Factory::create('fr_FR');
        // $product = new Product();
        // $manager->persist($product);

        // Ajout de nouveaux users
        $users = [];
        for ($i=1; $i<=10; $i++){
            $user = new User();

            $hash = $this->encoder->encodePassword($user, 'password');

            $user->setFirstname($faker->firstname);
            $user->setLastname($faker->lastName);
            $user->setEmail($faker->email);
            $user->setPhone('0640477052');
            $user->setHash($hash);
            $user->setRole('standard');

            $manager->persist($user);
            $users[] = $user;
        }

        $manager->flush();
    }
}

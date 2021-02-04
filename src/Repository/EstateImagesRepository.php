<?php

namespace App\Repository;

use App\Entity\EstateImages;
use Doctrine\Bundle\DoctrineBundle\Repository\ServiceEntityRepository;
use Doctrine\Persistence\ManagerRegistry;

/**
 * @method EstateImages|null find($id, $lockMode = null, $lockVersion = null)
 * @method EstateImages|null findOneBy(array $criteria, array $orderBy = null)
 * @method EstateImages[]    findAll()
 * @method EstateImages[]    findBy(array $criteria, array $orderBy = null, $limit = null, $offset = null)
 */
class EstateImagesRepository extends ServiceEntityRepository
{
    public function __construct(ManagerRegistry $registry)
    {
        parent::__construct($registry, EstateImages::class);
    }

    // /**
    //  * @return EstateImages[] Returns an array of EstateImages objects
    //  */
    /*
    public function findByExampleField($value)
    {
        return $this->createQueryBuilder('e')
            ->andWhere('e.exampleField = :val')
            ->setParameter('val', $value)
            ->orderBy('e.id', 'ASC')
            ->setMaxResults(10)
            ->getQuery()
            ->getResult()
        ;
    }
    */

    /*
    public function findOneBySomeField($value): ?EstateImages
    {
        return $this->createQueryBuilder('e')
            ->andWhere('e.exampleField = :val')
            ->setParameter('val', $value)
            ->getQuery()
            ->getOneOrNullResult()
        ;
    }
    */
}

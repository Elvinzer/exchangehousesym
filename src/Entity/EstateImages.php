<?php

namespace App\Entity;

use App\Repository\EstateImagesRepository;
use Doctrine\ORM\Mapping as ORM;

/**
 * @ORM\Entity(repositoryClass=EstateImagesRepository::class)
 */
class EstateImages
{
    /**
     * @ORM\Id
     * @ORM\GeneratedValue
     * @ORM\Column(type="integer")
     */
    private $id;

    /**
     * @ORM\Column(type="string", length=255)
     */
    private $url;

    /**
     * @ORM\ManyToOne(targetEntity=Estate::class, inversedBy="estateImages")
     * @ORM\JoinColumn(nullable=false)
     */
    private $estate;

    public function getId(): ?int
    {
        return $this->id;
    }

    public function getUrl(): ?string
    {
        return $this->url;
    }

    public function setUrl(string $url): self
    {
        $this->url = $url;

        return $this;
    }

    public function getEstate(): ?Estate
    {
        return $this->estate;
    }

    public function setEstate(?Estate $estate): self
    {
        $this->estate = $estate;

        return $this;
    }
}

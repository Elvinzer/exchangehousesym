<?php

namespace App\Entity;

use App\Repository\EstateRepository;
use Doctrine\Common\Collections\ArrayCollection;
use Doctrine\Common\Collections\Collection;
use Doctrine\ORM\Mapping as ORM;

/**
 * @ORM\Entity(repositoryClass=EstateRepository::class)
 */
class Estate
{
    /**
     * @ORM\Id
     * @ORM\GeneratedValue
     * @ORM\Column(type="integer")
     */
    private $id;

    /**
     * @ORM\Column(type="boolean")
     */
    private $availability;

    /**
     * @ORM\Column(type="integer")
     */
    private $price;

    /**
     * @ORM\Column(type="integer")
     */
    private $surface;

    /**
     * @ORM\Column(type="integer")
     */
    private $zipcode;

    /**
     * @ORM\Column(type="date", nullable=true)
     */
    private $availability_date;

    /**
     * @ORM\Column(type="string", length=255)
     */
    private $coverImage;

    /**
     * @ORM\ManyToOne(targetEntity=User::class, inversedBy="estates")
     * @ORM\JoinColumn(nullable=false)
     */
    private $user;

    /**
     * @ORM\OneToMany(targetEntity=EstateImages::class, mappedBy="estate", orphanRemoval=true)
     */
    private $estateImages;

    public function __construct()
    {
        $this->estateImages = new ArrayCollection();
    }

    public function getId(): ?int
    {
        return $this->id;
    }

    public function getAvailability(): ?bool
    {
        return $this->availability;
    }

    public function setAvailability(bool $availability): self
    {
        $this->availability = $availability;

        return $this;
    }

    public function getPrice(): ?int
    {
        return $this->price;
    }

    public function setPrice(int $price): self
    {
        $this->price = $price;

        return $this;
    }

    public function getSurface(): ?int
    {
        return $this->surface;
    }

    public function setSurface(int $surface): self
    {
        $this->surface = $surface;

        return $this;
    }

    public function getZipcode(): ?int
    {
        return $this->zipcode;
    }

    public function setZipcode(int $zipcode): self
    {
        $this->zipcode = $zipcode;

        return $this;
    }

    public function getAvailabilityDate(): ?\DateTimeInterface
    {
        return $this->availability_date;
    }

    public function setAvailabilityDate(?\DateTimeInterface $availability_date): self
    {
        $this->availability_date = $availability_date;

        return $this;
    }

    public function getCoverImage(): ?string
    {
        return $this->coverImage;
    }

    public function setCoverImage(string $coverImage): self
    {
        $this->coverImage = $coverImage;

        return $this;
    }

    public function getUser(): ?User
    {
        return $this->user;
    }

    public function setUser(?User $user): self
    {
        $this->user = $user;

        return $this;
    }

    /**
     * @return Collection|EstateImages[]
     */
    public function getEstateImages(): Collection
    {
        return $this->estateImages;
    }

    public function addEstateImage(EstateImages $estateImage): self
    {
        if (!$this->estateImages->contains($estateImage)) {
            $this->estateImages[] = $estateImage;
            $estateImage->setEstate($this);
        }

        return $this;
    }

    public function removeEstateImage(EstateImages $estateImage): self
    {
        if ($this->estateImages->removeElement($estateImage)) {
            // set the owning side to null (unless already changed)
            if ($estateImage->getEstate() === $this) {
                $estateImage->setEstate(null);
            }
        }

        return $this;
    }
}

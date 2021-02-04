<?php

declare(strict_types=1);

namespace DoctrineMigrations;

use Doctrine\DBAL\Schema\Schema;
use Doctrine\Migrations\AbstractMigration;

/**
 * Auto-generated Migration: Please modify to your needs!
 */
final class Version20210126214228 extends AbstractMigration
{
    public function getDescription() : string
    {
        return '';
    }

    public function up(Schema $schema) : void
    {
        // this up() migration is auto-generated, please modify it to your needs
        $this->addSql('ALTER TABLE estate_images ADD estate_id INT NOT NULL');
        $this->addSql('ALTER TABLE estate_images ADD CONSTRAINT FK_8EA68865900733ED FOREIGN KEY (estate_id) REFERENCES estate (id)');
        $this->addSql('CREATE INDEX IDX_8EA68865900733ED ON estate_images (estate_id)');
    }

    public function down(Schema $schema) : void
    {
        // this down() migration is auto-generated, please modify it to your needs
        $this->addSql('ALTER TABLE estate_images DROP FOREIGN KEY FK_8EA68865900733ED');
        $this->addSql('DROP INDEX IDX_8EA68865900733ED ON estate_images');
        $this->addSql('ALTER TABLE estate_images DROP estate_id');
    }
}
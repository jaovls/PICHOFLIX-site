-- --------------------------------------------------------
-- Servidor:                     127.0.0.1
-- Versão do servidor:           10.4.32-MariaDB - mariadb.org binary distribution
-- OS do Servidor:               Win64
-- HeidiSQL Versão:              12.6.0.6765
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;


-- Copiando estrutura do banco de dados para pichoflix
CREATE DATABASE IF NOT EXISTS `pichoflix` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci */;
USE `pichoflix`;

-- Copiando estrutura para tabela pichoflix.filmes
CREATE TABLE IF NOT EXISTS `filmes` (
  `id_filme` int(10) NOT NULL AUTO_INCREMENT,
  `titulo` varchar(100) NOT NULL,
  `descricao` varchar(100) NOT NULL,
  `duracao` time NOT NULL,
  `classificacao` varchar(50) NOT NULL DEFAULT '',
  PRIMARY KEY (`id_filme`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- Copiando dados para a tabela pichoflix.filmes: ~5 rows (aproximadamente)
INSERT INTO `filmes` (`id_filme`, `titulo`, `descricao`, `duracao`, `classificacao`) VALUES
	(1, 'Carros', 'Filme sobre corrida muito bom', '01:30:00', 'Comédia/Aventura'),
	(2, 'Gigantes de Aço', 'Lutas de robos', '02:07:00', 'Ação'),
	(3, 'Mad Max', 'Fuga no deserto', '02:00:00', 'Ação'),
	(4, 'Tropa de Elite', 'Um pouco de violência no RJ', '01:56:00', 'Ação'),
	(5, 'Tropa de Elite 2', 'Continuação do primeiro filme', '01:58:00', 'Ação');

-- Copiando estrutura para tabela pichoflix.usuarios
CREATE TABLE IF NOT EXISTS `usuarios` (
  `id_usuario` int(10) NOT NULL AUTO_INCREMENT,
  `email` varchar(100) NOT NULL,
  `senha` varchar(100) NOT NULL,
  PRIMARY KEY (`id_usuario`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- Copiando dados para a tabela pichoflix.usuarios: ~2 rows (aproximadamente)
INSERT INTO `usuarios` (`id_usuario`, `email`, `senha`) VALUES
	(1, 'joazinho@gmail.com', '123456'),
	(2, 'junin@gmail.com', '123qwe');

/*!40103 SET TIME_ZONE=IFNULL(@OLD_TIME_ZONE, 'system') */;
/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IFNULL(@OLD_FOREIGN_KEY_CHECKS, 1) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40111 SET SQL_NOTES=IFNULL(@OLD_SQL_NOTES, 1) */;

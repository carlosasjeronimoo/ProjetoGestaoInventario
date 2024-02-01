create database GestaoInventario;

use GestaoInventario;

CREATE TABLE Clientes (
cliente_id INT AUTO_INCREMENT PRIMARY KEY,
nome_completo VARCHAR(255) NOT NULL,
data_nascimento DATE UNIQUE NOT NULL,
endereço_completo VARCHAR(200) NOT NULL,
sexo VARCHAR(1),
email VARCHAR(40) 
);

CREATE TABLE Produto (
produto_id INT AUTO_INCREMENT PRIMARY KEY,
nome VARCHAR(40),
tipo VARCHAR(40),
quantidade INT,
condição VARCHAR(40),
preco DECIMAL(10,2)
);

CREATE TABLE Fornecedor (
fornecedor_id INT AUTO_INCREMENT PRIMARY KEY,
CNPJ VARCHAR(16),
razao_social VARCHAR(40),
nome_fantasia VARCHAR(40),
endereco_completo VARCHAR(200),
email VARCHAR(40),
produto_id INT,
FOREIGN KEY (produto_id) REFERENCES Produto(produto_id)
);

CREATE TABLE Pedido (
pedido_id INT AUTO_INCREMENT PRIMARY KEY,
data_pedido DATE,
status_pedido VARCHAR(15),
forma_de_pagamento VARCHAR(20),
total DECIMAL(10,2),
cliente_id INT,
produto_id INT,
FOREIGN KEY (cliente_id) REFERENCES Clientes(cliente_id),
FOREIGN KEY (produto_id) REFERENCES Produto(produto_id)
);

INSERT INTO 
	Clientes (nome_completo, data_nascimento, endereço_completo, sexo, email)
VALUES
    ('João Silva', '1990-05-15', 'Rua A, 123, Bairro Centro, Cidade A, UF A', 'M', 'joao.silva@email.com'),
    ('Maria Oliveira', '1985-08-22', 'Av. B, 456, Bairro Sul, Cidade B, UF B', 'F', 'maria.oliveira@email.com'),
    ('Carlos Santos', '1993-02-10', 'Rua C, 789, Bairro Oeste, Cidade C, UF C', 'M', 'carlos.santos@email.com'),
    ('Ana Pereira', '1988-11-03', 'Av. D, 987, Bairro Leste, Cidade D, UF D', 'F', 'ana.pereira@email.com'),
    ('Pedro Rocha', '1995-07-18', 'Rua E, 654, Bairro Norte, Cidade E, UF E', 'M', 'pedro.rocha@email.com'),
    ('Fernanda Lima', '1980-04-25', 'Av. F, 321, Bairro Centro, Cidade F, UF F', 'F', 'fernanda.lima@email.com'),
    ('Rafael Oliveira', '1998-09-12', 'Rua G, 159, Bairro Sul, Cidade G, UF G', 'M', 'rafael.oliveira@email.com'),
    ('Juliana Santos', '1983-06-08', 'Av. H, 753, Bairro Oeste, Cidade H, UF H', 'F', 'juliana.santos@email.com'),
    ('Gustavo Silva', '1991-12-30', 'Rua I, 246, Bairro Leste, Cidade I, UF I', 'M', 'gustavo.silva@email.com'),
    ('Luciana Rocha', '1986-03-17', 'Av. J, 852, Bairro Norte, Cidade J, UF J', 'F', 'luciana.rocha@email.com');
    
    INSERT INTO Produto (nome, tipo, quantidade, condição, preco)
VALUES
    ('Smartphone X', 'Eletrônico', 50, 'Novo', 899.99),
    ('Notebook Pro', 'Eletrônico', 30, 'Usado', 1299.99),
    ('Cadeira Ergonômica', 'Móveis', 20, 'Novo', 199.99),
    ('Smart TV 4K', 'Eletrônico', 15, 'Novo', 699.99),
    ('Livro: "Aventuras no Espaço"', 'Livros', 100, 'Novo', 29.99),
    ('Mesa de Jantar', 'Móveis', 25, 'Usado', 149.99),
    ('Fones de Ouvido Bluetooth', 'Eletrônico', 40, 'Novo', 49.99),
    ('Relógio Inteligente', 'Eletrônico', 35, 'Novo', 79.99),
    ('Geladeira Frost Free', 'Eletrodomésticos', 10, 'Novo', 899.99),
    ('Console de Videogame', 'Eletrônico', 18, 'Usado', 299.99);
    
   alter table pedido drop column total;
   
   select * from pedido;
   
   ALTER TABLE Pedido
MODIFY COLUMN status_pedido VARCHAR(30);

ALTER TABLE Pedido
MODIFY COLUMN forma_de_pagamento VARCHAR(30);
   
   INSERT INTO Pedido (data_pedido, status_pedido, forma_de_pagamento)
VALUES
    ('2023-01-10', 'Em processamento', 'Cartão de crédito'),
    ('2023-02-15', 'Concluído', 'Boleto bancário'),
    ('2023-03-20', 'Em processamento', 'Transferência bancária'),
    ('2023-04-25', 'Concluído', 'Cartão de débito'),
    ('2023-05-30', 'Cancelado', 'Pix'),
    ('2023-06-05', 'Concluído', 'Boleto bancário'),
    ('2023-07-10', 'Em processamento', 'Cartão de crédito'),
    ('2023-08-15', 'Concluído', 'Transferência bancária'),
    ('2023-09-20', 'Cancelado', 'Pix'),
    ('2023-10-25', 'Concluído', 'Cartão de débito');
    
select * From Pedido;
    
ALTER TABLE Fornecedor
MODIFY COLUMN CNPJ VARCHAR(20);
    
 INSERT INTO Fornecedor (CNPJ, razao_social, nome_fantasia, endereco_completo, email, produto_id)
VALUES
    ('12.345.678/9012-34', 'Fornecedor Eletrônicos S.A.', 'Eletronics Fornecimentos', 'Rua A, 123, Bairro Centro, Cidade A, UF A', 'contato@eletronics.com', 1),
    ('56.789.012/3456-78', 'Móveis & Decoração Ltda.', 'Móveis R Us', 'Av. B, 456, Bairro Sul, Cidade B, UF B', 'contato@moveisrus.com', 3),
    ('90.123.456/7890-12', 'Fornecedor Livros Express', 'Leitura Rápida', 'Rua C, 789, Bairro Oeste, Cidade C, UF C', 'contato@livrosexpress.com', 5),
    ('34.567.890/1234-56', 'Eletrodomésticos Connection', 'EletroConnect', 'Av. D, 987, Bairro Leste, Cidade D, UF D', 'contato@eletroconnect.com', 9),
    ('78.901.234/5678-90', 'Fornecedora de Gadgets Inovadores', 'GadgetInova', 'Rua E, 654, Bairro Norte, Cidade E, UF E', 'contato@gadgetinova.com', 7),
    ('23.456.789/0123-45', 'Decorações Elegantes Ltda.', 'Elegância em Decoração', 'Av. F, 321, Bairro Centro, Cidade F, UF F', 'contato@eleganciadecor.com', 6),
    ('67.890.123/4567-89', 'Fornecedor de Utensílios Culinários', 'Chef Supplies', 'Rua G, 159, Bairro Sul, Cidade G, UF G', 'contato@chefsupplies.com', 2),
    ('12.345.098/7654-32', 'Fornecedor Eletrônicos Inc.', 'Eletronics Inc.', 'Av. H, 753, Bairro Oeste, Cidade H, UF H', 'contato@eletronicsinc.com', 8),
    ('87.654.321/0987-65', 'Móveis Modernos Ltda.', 'Modern Móveis', 'Rua I, 246, Bairro Leste, Cidade I, UF I', 'contato@modernmoveis.com', 4),
    ('54.321.098/7654-32', 'Fornecedor de Artigos de Entretenimento', 'Entertain Supplies', 'Av. J, 852, Bairro Norte, Cidade J, UF J', 'contato@entertainsupplies.com', 10);
    
    select * from Fornecedor;
    
    
    
    
   
    
    




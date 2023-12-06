CREATE SCHEMA bang_db;
USE bang_db;


CREATE TABLE clientes
(
id_cliente int primary key not null,
nome varchar(45) not null,
email varchar (45) null,
telefone bigint not null,
endereco varchar (100) not null,
cpf bigint not null
);

INSERT INTO clientes VALUES
(1, "Francisca da Silva", "silvafrancisca@gmail.com", 11988537879, "Jandira-SP, Parque St.Tereza, R.Osasco ", 62391072040),
(2, "Luana Magalhães", "lulumagali@gmail.com", 11955735001, "Barueri-SP, Centro, Av.Guilherme Perereca", 05524299026),
(3, "Guilherme Santino", "santigui@gmail.com", 11970914265, "Salvador-BA, Centro, R.dos Namorados", 90092723039),
(4, "Celio Firmino", "celio@gmail.com", 11910987348, "Recife-PE, Centro, Av.Barbosa Lima", 79045170000),
(5, "Renata Adelaide", "adelerere@gmail.com", 11984737879, "Luis Eduardo Magalhães-BA, Centro, R.Pau Ferro", 94801578020),
(6, "Yara Pataxó", "ptxyara@gmail.com", 11908004266, "Manaus-AM, Aleixo, R.Aramã", 57701821058),
(7, "Matheus Teixeira", "txteteu@gmail.com", 11975490235, "Macapá-AP, Santa Rita, R.Paraná", 57845801089),
(8, "Cecilia dos Santos", "ceci@gmail.com", 11947829645, "Santos-SP, Gonzaga, Av.Ana Costa", 26792808067),
(9, "Tenêncio Domingues", "domtenencio@gmail.com", 11987467270, "Gramado-RS, Centro, R.Ernesto Volk", 22891362047),
(10, "Julio Cocielo", "juliocolielo@gmail.com", 11976438654, "Rio de Janeiro-RJ, Ipanema, Av.Vieira Souto", 72149255081);


SELECT * FROM clientes; 

CREATE TABLE categorias
(
id_categoria int primary key not null,
nome varchar(45) not null
);

INSERT INTO categorias VALUES
(1, "Mouse"),
(2, "Teclado"),
(3, "Monitor"),
(4, "Armazenamento"),
(5, "Processador"),
(6, "Memória RAM"),
(7, "Placa-mãe"),
(8, "Placa de Video"),
(9, "Cooler"),
(10, "Fonte");



CREATE TABLE produtos
(
id_produto int primary key not null,
nome varchar(45) not null,
marca varchar (45) not null,
descricao varchar (250) not null,
preco double not null,
quantidade_estoque int not null,
id_categoria int not null,

foreign key (id_categoria) references categorias (id_categoria)
);




CREATE TABLE pedidos
(
id_pedido int primary key not null,
id_cliente int not null,
data_pedido date not null,

foreign key (id_cliente) references clientes(id_cliente)
);

CREATE TABLE vendas 
(
id_venda int primary key not null,
id_pedido int not null,
id_produto int not null,

foreign key (id_produto) references produtos (id_produto),
foreign key (id_pedido) references pedidos (id_pedido)
);






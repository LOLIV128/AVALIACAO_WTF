
-- Banco de dados: `tecnologia`

-- Estrutura para tabela `chamados1`
--

CREATE TABLE `chamados1` (
  `contador` int(255) NOT NULL,
  `Local` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `DataHora` varchar(150) COLLATE utf8_unicode_ci NOT NULL,
  `Técnico` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `Status` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `servico` varchar(600) COLLATE utf8_unicode_ci DEFAULT NULL,
  `serviexecu` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `DataHoraAber` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `DataHoraFim` varchar(20) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Despejando dados para a tabela `chamados1`
--

INSERT INTO `chamados1` (`contador`, `Local`, `DataHora`, `Técnico`, `Status`, `servico`, `serviexecu`, `DataHoraAber`, `DataHoraFim`) VALUES
(2, 'Miller Indep', '18/04/2021 17:38', 'Tecnico1teste', 'Aberto', 'teste2', '', '', ''),
(5, 'Miller café', '19/04/2021 09:11', 'José', 'Feito', 'Fazer cabo de rede no açougue ', 'Usado 5m de cabo de rede, deixado ponteira por conta sa CSinformatica', '19/04/2021 09:14', '19/04/2021 09:15');


-- --------------------------------------------------------

--
-- Estrutura para tabela `tecnicos`
--

CREATE TABLE `tecnicos` (
  `nome` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `NomeCompleto` varchar(300) COLLATE utf8_unicode_ci NOT NULL,
  `id` int(80) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Despejando dados para a tabela `tecnicos`
--

INSERT INTO `tecnicos` (`nome`, `NomeCompleto`, `id`) VALUES
('Tecnico1teste', 'Tecnico1Teste', 36),
('Gean novato', 'Gean', 42);

-- --------------------------------------------------------

--
-- Estrutura para tabela `usuarios`
--

CREATE TABLE `usuarios` (
  `id` int(11) UNSIGNED NOT NULL,
  `nome` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `username` varchar(25) COLLATE utf8_unicode_ci NOT NULL,
  `password` varchar(40) COLLATE utf8_unicode_ci NOT NULL,
  `role` varchar(50) COLLATE utf8_unicode_ci NOT NULL DEFAULT ''
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Despejando dados para a tabela `usuarios`
--

INSERT INTO `usuarios` (`id`, `nome`, `username`, `password`, `role`) VALUES
(21, 'Sub-Administrador', 'SubAdminteste', 'SubAdminteste', 'subadim'),
(16, 'gean', 'Testeadmin', 'testeadmin', 'admin');


-- Índices de tabela `chamados1`
--
ALTER TABLE `chamados1`
  ADD PRIMARY KEY (`contador`);

--
-- Índices de tabela `tecnicos`
--
ALTER TABLE `tecnicos`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `Nome` (`nome`),
  ADD UNIQUE KEY `NomeCompleto` (`NomeCompleto`);

--
-- Índices de tabela `usuarios`
--
ALTER TABLE `usuarios`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `usuario` (`username`),
  ADD KEY `nivel` (`role`);

--
-- AUTO_INCREMENT de tabelas apagadas
--

--
-- AUTO_INCREMENT de tabela `chamados1`
--
ALTER TABLE `chamados1`
  MODIFY `contador` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT de tabela `tecnicos`
--
ALTER TABLE `tecnicos`
  MODIFY `id` int(80) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=45;

--
-- AUTO_INCREMENT de tabela `usuarios`
--
ALTER TABLE `usuarios`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;


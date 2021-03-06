local AparicaoHeroi = false
local AparicaoBoss = false
local PossuiChave1 = false
local EventoChave1 = true
local EventoEstatua1 = false
local PossuiTotem1 = false
local PossuiTotem2 = false
local Pedras1 = true
local JumpScareTela6 = true
local dt = 0
local PortaoAeroportoTrancado = true
local ApareceInterfaceTexto = false
local ApareceVida = false
local Randow = love.math.random(1, 10)
local PrimeiraVezRitual = true
local TravaDaPorta = false
local Dificuldade = 3
local TelaAntiga = 0
local MenuAltura = 560
local MenuLarg = 1000
local TelaLarguraAeroporto = 700
local TelaAlturaAeroporto = 394
local MovimentoHeroi = 3
local Nivel = 0
local PossuiCodigo1 = false
local EnventoCodigo1 = true
local Vida = 100

function love.load()
  ------ DECLARA AS IMAGENS ------
  ImgFundo1 = love.graphics.newImage("imagens/Interior1.png")
  ImgFundo2 = love.graphics.newImage("imagens/Interior2.png")
  ImgFundo3 = love.graphics.newImage("imagens/Fundo3.jpg")
  ImgFundo4 = love.graphics.newImage("imagens/Fundo41.png")
  ImgFundo5 = love.graphics.newImage("imagens/Lado5.png")
  ImgFundo51 = love.graphics.newImage("imagens/Lado51.png")
  ImgFundo6 = love.graphics.newImage("imagens/Lado6.png")
  ImgFundo7 = love.graphics.newImage("imagens/Lado7.png")
  ImgFundo8 = love.graphics.newImage("imagens/SubSolo.png")
  ImgMorte = love.graphics.newImage("imagens/Morte.png")
  ImgCima = love.graphics.newImage("imagens/Cima1.png")
  ImgBaixo = love.graphics.newImage("imagens/Baixo1.png")
  ImgEsq = love.graphics.newImage("imagens/Esq1.png")
  ImgDir = love.graphics.newImage("imagens/Dir1.png")
  ImgFechadura = love.graphics.newImage("imagens/Fechadura.png")
  ImgFechaduraSusto = love.graphics.newImage("imagens/FechaduraSusto.png")
  ImgVida20 = love.graphics.newImage("imagens/Vida20.png")
  ImgVida40 = love.graphics.newImage("imagens/Vida40.png")
  ImgVida60 = love.graphics.newImage("imagens/Vida60.png")
  ImgVida80 = love.graphics.newImage("imagens/Vida80.png")
  ImgVida100 = love.graphics.newImage("imagens/Vida100.png")
  ImgChave1 = love.graphics.newImage("imagens/Chave1.png")
  ImgCodigo1 = love.graphics.newImage("imagens/Codigo1.png")
  ImgTotem1 = love.graphics.newImage("imagens/TOTEM 1.png")
  ImgTotem2 = love.graphics.newImage("imagens/TOTEM 2.png")
  ImgTotem3 = love.graphics.newImage("imagens/TOTEM 3.png")
  ImgSusto1 = love.graphics.newImage("imagens/Bowser.png")
  InterfaceTexto = love.graphics.newImage("imagens/InterfaceTexto.png")
  Rosto = love.graphics.newImage("imagens/Rosto.png")
  MenuPrincipal = love.graphics.newImage("imagens/MenuPrincipal.png")
  MenuConfig = love.graphics.newImage("imagens/MenuConfig.png")

  ImgAeroporto1 = love.graphics.newImage("imagens/Aeroporto1.png")
  ImgAeroporto2 = love.graphics.newImage("imagens/Aeroporto2.png")
  ImgAeroporto3 = love.graphics.newImage("imagens/Aeroporto3.png")
  ImgAeroporto4 = love.graphics.newImage("imagens/Aeroporto4.png")
  ImgAeroporto5 = love.graphics.newImage("imagens/Aeroporto5.png")
  ImgAeroporto6 = love.graphics.newImage("imagens/Aeroporto61.png")
  ImgAeroporto7 = love.graphics.newImage("imagens/Aeroporto71.png")
  ImgAeroporto8 = love.graphics.newImage("imagens/Aeroporto8.png")
  ImgAeroporto9 = love.graphics.newImage("imagens/Aeroporto9.png")
  ImgAeroporto10 = love.graphics.newImage("imagens/Aeroporto10.png")
  ImgAeroporto11 = love.graphics.newImage("imagens/Aeroporto11.png")
  ImgAeroporto12 = love.graphics.newImage("imagens/Aeroporto12.png")

  SomFundoAtual = SomMenuPrincipal

  JumpScare = love.audio.newSource("imagens/Sons/JumpScare.mp3","static")
  PortaAbrindo = love.audio.newSource("imagens/Sons/PortaAbrindo.mp3","static")
  Rosnado = love.audio.newSource("imagens/Sons/RosnadoMonstro.mp3","static")
  GritoFuria = love.audio.newSource("imagens/Sons/GritoFuria.mp3","static")
  Passos = love.audio.newSource("imagens/Sons/Passos.mp3","static")
  PAMMM = love.audio.newSource("imagens/Sons/PAMMMM.mp3","static")
  SomMorte = love.audio.newSource("imagens/Sons/AudioDeMorte.mp3","static")
  SomAeroporto = love.audio.newSource("imagens/Sons/Aeroporto.mp3","static")
  SomExterior = love.audio.newSource("imagens/Sons/Exterior.mp3","static")
  SomMenuPrincipal = love.audio.newSource("imagens/Sons/MenuPrincipal.mp3","static")

  fonte = love.graphics.newFont(16)
  love.graphics.setFont(fonte)

  ------  DECLARA AS TELAS ------

  Tela1 = 
  {
    ImgFundo = ImgFundo1,
    Alt = 700,
    Larg = 700
  }

  Tela2 = 
  {
    ImgFundo = ImgFundo2,
    Alt = 416,
    Larg = 363
  }

  Tela3 = 
  {
    ImgFundo = ImgFundo3,
    Alt = 700,
    Larg = 500
  }

  Tela4 = 
  {
    ImgFundo = ImgFundo4,
    Alt = 602,
    Larg = 1000
  }

  Tela6 = 
  {
    ImgFundo = ImgFundo6,
    Alt = 369,
    Larg = 539
  }

  Tela7 = 
  {
    ImgFundo = ImgFundo7,
    Alt = 369,
    Larg = 539
  }

  Tela8 = 
  {
    ImgFundo = ImgFundo8,
    Alt = 212,
    Larg = 630
  }

  TelaFechadura = 
  {
    Alt = 626,
    Larg = 626
  }

  ------ DECLARA OS PERSONAGENS ------

  Heroi = 
  {
    POSX = Tela3.Larg / 2,
    POSY = Tela3.Alt / 2,
    SPEED = 200,
    DIRECAO = ImgBaixo
  }

  Boss = 
  {
    POSX = 0,
    POSY = 0,
    SPEED = 200
  }

  Tela = MenuPrincipal ------ TELA INICIAL
  love.window.setMode(MenuLarg, MenuAltura, {resizable=true, vsync=false}) ------ SET TAMANHO TELA INICIAL
  love.audio.play(SomMenuPrincipal)

end

function love.update(dt)

  x = love.mouse.getX()
  y = love.mouse.getY()

  if Vida == 100 then
    HUD = ImgVida100
  end
  if Vida == 80 then
    HUD = ImgVida80
  end
  if Vida == 60 then
    HUD = ImgVida60
  end
  if Vida == 40 then
    HUD = ImgVida40
  end
  if Vida == 20 then
    HUD = ImgVida20
  end

  if Pedras1 == true then
    Tela5 = 
    {
      ImgFundo = ImgFundo51,
      Alt = 369,
      Larg = 539
    }
  end
  if Pedras1 == false then
    Tela5 = 
    {
      ImgFundo = ImgFundo5,
      Alt = 369,
      Larg = 539
    }
  end

  -------------- MENUPRINCIPAL DA INICIO AO JOGO 
  if Tela == MenuPrincipal then

    if x > 130 and x < 300 and y > 270 and y < 310 then
      if love.mouse.isDown(1)then
        Tela = ImgAeroporto1
        love.window.setMode(TelaLarguraAeroporto, TelaAlturaAeroporto, {resizable=true, vsync=false})
        ApareceVida = true
        love.audio.stop(SomMenuPrincipal)
        love.audio.play(SomAeroporto) 
      end
    end
    -------------- MENUPRINCIPAL PARA MENUCONFIG 
    if x > 680 and x < 890 and y > 270 and y < 320 then
      if love.mouse.isDown(1)then
        Tela = MenuConfig
      end
    end
  end
  -------------- MENUCONFIG PARA MENUPRINCIPAL
  if Tela == MenuConfig then
    if x > 100 and x < 360 and y > 450 and y < 490 then
      if love.mouse.isDown(1)then
        Tela = MenuPrincipal
      end
    end
  end
  -------------- AEROPORTO 11 
  if Tela == ImgAeroporto11 then
    -------------- AEROPORTO 11 PARA O 1
    if x > 350 and x < 400 and y > 300 and y < 350 then
      if love.mouse.isDown(1)then 
        Tela = ImgAeroporto1
        love.audio.play(Passos)
        ApareceInterfaceTexto = false
      end
    end
  end
  -------------- AEROPORTO 12 
  if Tela == ImgAeroporto12 then
    -------------- AEROPORTO 12 PARA O 1
    if x > 350 and x < 400 and y > 300 and y < 350 then
      if love.mouse.isDown(1)then 
        Tela = ImgAeroporto1
        love.audio.play(Passos)
        ApareceInterfaceTexto = false
      end
    end
    -------------- AEROPORTO 12 PARA FORA
    if x > 180 and x < 590 and y > 30 and y < 300 then
      if love.mouse.isDown(1)then 
        love.window.setMode(Tela3.Larg, Tela3.Alt, {resizable=true, vsync=false})
        Tela = Tela3.ImgFundo
        AparicaoHeroi = true
        love.audio.play(Passos)
        ApareceInterfaceTexto = false
        Heroi.POSX = 100
        Heroi.POSY = 320
      end
    end
  end
  -------------- AEROPORTO 1 
  if Tela == ImgAeroporto1 then
    -------------- AEROPORTO 1 PARA O 2
    if x > 250 and x < 450 and y > 80 and y < 200 then
      if love.mouse.isDown(1)then 
        Tela = ImgAeroporto2
        love.audio.play(Passos)
        ApareceInterfaceTexto = false
      end
    end
    -------------- AEROPORTO 1 PARA O 11
    if x > 300 and x < 350 and y > 300 and y < 350 then
      if love.mouse.isDown(1)then
        if PortaoAeroportoTrancado == true then
          Tela = ImgAeroporto11
          love.audio.play(Passos)
          ApareceInterfaceTexto = false
        end
        -------------- AEROPORTO 1 PARA O 12
        if PortaoAeroportoTrancado == false then
          Tela = ImgAeroporto12
          love.audio.play(Passos)
          ApareceInterfaceTexto = false
        end
      end
    end
  end
  -------------- AEROPORTO 2
  if Tela == ImgAeroporto2 then
    -------------- AEROPORTO 2 PARA O 3
    if x > 500 and x < 600 and y > 100 and y < 200 then
      if love.mouse.isDown(1)then 
        Tela = ImgAeroporto3
        love.audio.play(Passos)
        ApareceInterfaceTexto = false
      end
    end
    -------------- AEROPORTO 2 PARA O 9
    if x > 100 and x < 200 and y > 100 and y < 200 then
      if love.mouse.isDown(1)then 
        Tela = ImgAeroporto9
        love.audio.play(Passos)
        ApareceInterfaceTexto = false
      end
    end
    -------------- AEROPORTO 2 PARA O 1
    if x > 350 and x < 400 and y > 300 and y < 350 then
      if love.mouse.isDown(1)then 
        Tela = ImgAeroporto1
        love.audio.play(Passos)
        ApareceInterfaceTexto = false
      end
    end
  end
  -------------- AEROPORTO 3
  if Tela == ImgAeroporto3 then
    -------------- AEROPORTO 3 PARA O 5
    if x > 360 and x < 370 and y > 70 and y < 200 then
      if love.mouse.isDown(1)then 
        Tela = ImgAeroporto5
        love.audio.play(Passos)
        ApareceInterfaceTexto = false
      end
    end
    -------------- AEROPORTO 3 PARA O 2
    if x > 300 and x < 350 and y > 300 and y < 350 then
      if love.mouse.isDown(1)then 
        Tela = ImgAeroporto2
        love.audio.play(Passos)
        ApareceInterfaceTexto = false
      end
    end
  end
  -------------- AEROPORTO 9
  if Tela == ImgAeroporto9 then
    -------------- AEROPORTO 9 PARA O 2
    if x > 300 and x < 350 and y > 300 and y < 350 then
      if love.mouse.isDown(1)then 
        Tela = ImgAeroporto2
        love.audio.play(Passos)
        ApareceInterfaceTexto = false
      end
    end
    -------------- AEROPORTO 9 PARA O 10
    if x > 240 and x < 380 and y > 160 and y < 180 then
      if love.mouse.isDown(1)then 
        Tela = ImgAeroporto10
        love.audio.play(Passos)
        ApareceInterfaceTexto = false
      end
    end
  end
  ------- AEROPORTO 10 - 9
  if Tela == ImgAeroporto10 then
    if PrimeiraVezRitual == true then
      ApareceInterfaceTexto = true
    end
    if x > 350 and x < 400 and y > 300 and y < 350 then
      if love.mouse.isDown(1)then 
        Tela = ImgAeroporto9
        love.audio.play(Passos)
        ApareceInterfaceTexto = false
      end
    end
    ------- AEROPORTO 10 coloca o Totem 2
    if x > 230 and x < 270 and y > 135 and y < 150 then
      if love.mouse.isDown(1)then 
        if PossuiTotem2 == true then
          ImgAeroporto10 = love.graphics.newImage("imagens/Aeroporto101.png")
          PossuiTotem2 = false
          love.audio.play(GritoFuria)
          Tela = ImgAeroporto10
          PortaoAeroportoTrancado = false
          ApareceInterfaceTexto = true
          Nivel = 1
        end
      end
    end
    ------- AEROPORTO 10 coloca o Totem 1
    if x > 25 and x < 85 and y > 175 and y < 200 then
      if love.mouse.isDown(1)then 
        if PossuiTotem1 == true then
          ImgAeroporto10 = love.graphics.newImage("imagens/Aeroporto102.png")
          PossuiTotem1 = false
          love.audio.play(GritoFuria)
          Tela = ImgAeroporto10
          Pedras1 = false
          Dificuldade = 6
          Nivel = 2
          Tela4.ImgFundo = love.graphics.newImage("imagens/Fundo4.png")
        end
      end
    end
------- AEROPORTO 10 coloca o Totem 3
    if x > 110 and x < 150 and y > 240 and y < 270 then
      if love.mouse.isDown(1)then 
        if PossuiTotem3 == true then
          ImgAeroporto10 = love.graphics.newImage("imagens/Aeroporto103.png")
          PossuiTotem3 = false
          love.audio.play(GritoFuria)
          Tela = ImgAeroporto10
          PortaoAeroportoTrancado = false
          ApareceInterfaceTexto = true
          Nivel = 3
        end
      end
    end
  end
  -------------- AEROPORTO 4
  if Tela == ImgAeroporto4 then
    -------------- AEROPORTO 4 PARA O 5
    if x > 120 and x < 170 and y > 10 and y < 270 then
      if love.mouse.isDown(1)then 
        Tela = ImgAeroporto5
        love.audio.play(Passos)
        ApareceInterfaceTexto = false
      end
    end
    -------------- AEROPORTO 4 PARA O 2
    if x > 400 and x < 470 and y > 120 and y < 150 then
      if love.mouse.isDown(1)then 
        Tela = ImgAeroporto2
        love.audio.play(Passos)
        ApareceInterfaceTexto = false
      end
    end
  end
  -------------- AEROPORTO 8
  if Tela == ImgAeroporto8 then
    -------------- AEROPORTO 8 PARA O 7
    if x > 300 and x < 350 and y > 300 and y < 350 then
      if love.mouse.isDown(1)then 
        Tela = ImgAeroporto7
        love.audio.play(Passos)
        ApareceInterfaceTexto = false
      end
    end
    -------------- AEROPORTO 8 PARA O 5
    if x > 340 and x < 360 and y > 125 and y < 140 then
      if love.mouse.isDown(1)then 
        Tela = ImgAeroporto5
        love.audio.play(Passos)
        ApareceInterfaceTexto = false
      end
    end
  end
  -------------- AEROPORTO 5
  if Tela == ImgAeroporto5 then
    -------------- AEROPORTO 5 PARA O 6
    if x > 285 and x < 440 and y > 20 and y < 60 then
      if love.mouse.isDown(1)then 
        Tela = ImgAeroporto6
        love.audio.play(Passos)
        ApareceInterfaceTexto = false
      end
    end
    -------------- AEROPORTO 5 PARA O 4
    if x > 300 and x < 350 and y > 300 and y < 350 then
      if love.mouse.isDown(1)then 
        Tela = ImgAeroporto4
        love.audio.play(Passos)
        ApareceInterfaceTexto = false
      end
    end
  end
  -------------- AEROPORTO 6
  if Tela == ImgAeroporto6 then
    -------------- AEROPORTO 6 PARA O 7
    if x > 350 and x < 400 and y > 150 and y < 200 then
      if love.mouse.isDown(1)then 
        Tela = ImgAeroporto7
        love.audio.play(Passos)
        ApareceInterfaceTexto = false
      end
    end
    -------------- AEROPORTO 6 PARA O 8
    if x > 350 and x < 400 and y > 300 and y < 350 then
      if love.mouse.isDown(1)then 
        Tela = ImgAeroporto8
        love.audio.play(Passos)
        ApareceInterfaceTexto = false
      end
    end
  end
  -------------- AEROPORTO 7
  if Tela == ImgAeroporto7 then
    -------------- AEROPORTO 7 PARA O 8
    if x > 350 and x < 400 and y > 300 and y < 350 then
      if love.mouse.isDown(1)then 
        Tela = ImgAeroporto8
        love.audio.play(Passos)
        ApareceInterfaceTexto = false
      end
    end
    -------------- AEROPORTO 7 PEGA TOTEM
    if x > 360 and x < 390 and y > 90 and y < 150 then
      if love.mouse.isDown(1)then 
        ImgAeroporto6 = love.graphics.newImage("imagens/Aeroporto6.png")
        ImgAeroporto7 = love.graphics.newImage("imagens/Aeroporto7.png")
        Tela = ImgAeroporto7
        PossuiTotem2 = true
        love.audio.play(Rosnado)
      end
    end
  end
-------------- VAI DA TELA MORTE PARA O MENU
  if Tela == ImgMorte then
    if x > 810 and x < 990 and y > 300 and y < 450 then
      if love.mouse.isDown(1)then
        
        AparicaoHeroi = false
        AparicaoBoss = false
        PossuiChave1 = false
        EventoChave1 = true
        EventoEstatua1 = false
        PossuiTotem1 = false
        PossuiTotem2 = false
        Pedras1 = true
        JumpScareTela6 = true
        dt = 0
        PortaoAeroportoTrancado = true
        ApareceInterfaceTexto = false
        ApareceVida = true
        Randow = love.math.random(1, 10)
        PrimeiraVezRitual = true
        TravaDaPorta = false
        Dificuldade = 3
        TelaAntiga = 0
        MenuAltura = 560
        MenuLarg = 1000
        TelaLarguraAeroporto = 700
        TelaAlturaAeroporto = 394
        MovimentoHeroi = 3
        Nivel = 0
        PossuiCodigo1 = false
        EnventoCodigo1 = true
        Vida = 100
        
        love.window.setMode(MenuLarg,MenuAltura,{resizable=true, vsync=false})
        Tela = MenuPrincipal
        
        ImgAeroporto6 = love.graphics.newImage("imagens/Aeroporto61.png")
        ImgAeroporto7 = love.graphics.newImage("imagens/Aeroporto71.png")
        ImgAeroporto10 = love.graphics.newImage("imagens/Aeroporto10.png")
        ImgFundo4 = love.graphics.newImage("imagens/Fundo41.png")
        ImgFundo2 = love.graphics.newImage("imagens/Interior2.png")
        ImgFundo5 = love.graphics.newImage("imagens/Lado5.png")
          
        SomFundoAtual = SomMenuPrincipal
        
      end
    end
  end
  -------------- VAI DA TELA 3 PARA 12
  if Tela == Tela3.ImgFundo then
    if Heroi.POSX < 40 and Heroi.POSY < 355 and Heroi.POSY > 300 then
      love.window.setMode(TelaLarguraAeroporto,TelaAlturaAeroporto,{resizable=true, vsync=false})
      Tela = ImgAeroporto12
      AparicaoHeroi = false
    end
  end
  -------------- VAI DA TELA 4 PARA 5
  if Heroi.POSX < 180 and Heroi.POSY < 60 then
    if Tela == Tela4.ImgFundo then
      love.window.setMode(Tela5.Larg,Tela5.Alt,{resizable=true, vsync=false})
      Tela = Tela5.ImgFundo
      Heroi.POSX = 40
      Heroi.POSY = 220
    end
  end
  ------------- VAI DA TELA 5 PARA 4
  if Heroi.POSX < 30 then
    if Tela == Tela5.ImgFundo then
      love.window.setMode(Tela4.Larg,Tela4.Alt,{resizable=true, vsync=false})
      Tela = Tela4.ImgFundo
      Heroi.POSX = 150
      Heroi.POSY = 100
    end
  end
  -------------- VAI DA TELA 3 PARA 4
  if Tela == Tela3.ImgFundo then
    if Heroi.POSX > 280 and Heroi.POSY > 660 then 
      love.window.setMode(Tela4.Larg, Tela4.Alt, {resizable=true, vsync=false}) 
      Tela = Tela4.ImgFundo
      Heroi.POSX = 200
      Heroi.POSY = 470
    end
  end
  -------------- VAI DA TELA 4 PARA 3
  if Heroi.POSX < 200 and Heroi.POSY > 500 then 
    if Tela == Tela4.ImgFundo then 
      love.window.setMode(Tela3.Larg, Tela3.Alt, {resizable=true, vsync=false})
      Tela = Tela3.ImgFundo
      Heroi.POSX = 270
      Heroi.POSY = 650
    end
  end
  -------------- VAI DA TELA 5 PARA 6
  if Heroi.POSX > 460 then
    if Tela == Tela5.ImgFundo then
      if Tela5.ImgFundo == ImgFundo5 then
        love.window.setMode(Tela6.Larg, Tela6.Alt, {resizable=true, vsync=false})
        Tela = Tela6.ImgFundo
        Heroi.POSX = 80
        Heroi.POSY = 220
      end
    end
  end
  -------------- VAI DA TELA 6 PARA 5
  if Heroi.POSX < 40 then
    if Tela == Tela6.ImgFundo then
      love.window.setMode(Tela5.Larg, Tela5.Alt, {resizable=true, vsync=false})
      Tela = Tela5.ImgFundo
      Heroi.POSX = 450
      Heroi.POSY = 220
    end
  end
  -------------- VAI DA TELA 2 PARA 8
  if Tela == Tela2.ImgFundo then  
    if Heroi.POSX > 10 and Heroi.POSX < 65 and Heroi.POSY > 270 and Heroi.POSX < 340 then
      love.window.setMode(Tela8.Larg, Tela8.Alt, {resizable=true, vsync=false})
      Tela = Tela8.ImgFundo
      Heroi.POSX = 570
      Heroi.POSY = 100
      MovimentoHeroi = 2
    end
  end
  -------------- VAI DA TELA 8 PARA 2
  if Tela == Tela8.ImgFundo then
    -------------- PEGA O CODIGO 1
    if Heroi.POSX > 30 and Heroi.POSX < 60 then
      if EnventoCodigo1 == true then 
        if love.keyboard.isDown("e")  then
          PossuiCodigo1 = true
          EnventoCodigo1 = false
        end
      end
    end
    if Heroi.POSX > 600 then
      love.window.setMode(Tela2.Larg, Tela2.Alt, {resizable=true, vsync=false})
      Tela = Tela2.ImgFundo
      Heroi.POSX = 45
      Heroi.POSY = 250
      MovimentoHeroi = 3
    end
  end
  ----------------- MOVIMENTO DO HEROI
  if MovimentoHeroi == 3 then 
    ----------------- HEROI ANDA DIREITA
    if love.keyboard.isDown("d")  then
      if Heroi.POSX < (love.graphics.getWidth() - ImgDir:getWidth() / 2) then
        Heroi.POSX = Heroi.POSX + Heroi.SPEED * dt
        Heroi.DIRECAO = ImgDir
      end
    end
    ----------------- HEROI ANDA ESQUERDA
    if love.keyboard.isDown("a") then
      if Heroi.POSX > (0 + ImgEsq:getWidth() / 2) then
        Heroi.POSX = Heroi.POSX - Heroi.SPEED * dt
        Heroi.DIRECAO = ImgEsq
      end
    end

    ----------------- HEROI ANDA CIMA
    if love.keyboard.isDown("w") then
      if Heroi.POSY > (0 + ImgCima:getHeight() / 2) then
        Heroi.POSY = Heroi.POSY - Heroi.SPEED * dt
        Heroi.DIRECAO = ImgCima
      end
    end

    --------------- HEROI ANDA BAIXO
    if love.keyboard.isDown("s") then
      if Heroi.POSY < (love.graphics.getHeight() - ImgBaixo:getHeight() / 2) then
        Heroi.POSY = Heroi.POSY + Heroi.SPEED * dt
        Heroi.DIRECAO = ImgBaixo
      end
    end
  end

  if MovimentoHeroi == 2 then
    ----------------- HEROI ANDA DIREITA
    if love.keyboard.isDown("d")  then
      if Heroi.POSX < (love.graphics.getWidth() - ImgDir:getWidth() / 2) then
        Heroi.POSX = Heroi.POSX + Heroi.SPEED * (dt / 2)
        Heroi.DIRECAO = ImgDir
        if Heroi.POSX > 400 and  Heroi.POSX < 500 then
          Heroi.POSY = Heroi.POSY - (Heroi.SPEED * (dt / 2))/2
        end
      end
    end
    ----------------- HEROI ANDA ESQUERDA
    if love.keyboard.isDown("a") then
      if Heroi.POSX > (0 + ImgEsq:getWidth() / 2) then
        Heroi.POSX = Heroi.POSX - Heroi.SPEED * (dt / 2)
        Heroi.DIRECAO = ImgEsq
        if Heroi.POSX > 400 and  Heroi.POSX < 500 then
          Heroi.POSY = Heroi.POSY + (Heroi.SPEED * (dt / 2))/2
        end
      end
    end
  end
  
  ---------------------------------------------------------------------------- PAREDES 
  if Tela == Tela3.ImgFundo then
    if Heroi.POSX >= 0 and Heroi.POSX <= 120 then
      if Heroi.POSY <= 272  then
        Heroi.POSY = 272
      end
    end
    if Heroi.POSY >= 110 and Heroi.POSY <= 270 then
      if Heroi.POSX <= 125 then
        Heroi.POSX = 125
      end
    end
    if Heroi.POSX >= 122 and Heroi.POSX <= 220 then
      if Heroi.POSY >= 200 and Heroi.POSY <= 210 then
        Heroi.POSY = 210
      end
    end
    if Heroi.POSX >= 95 and Heroi.POSX <= 340 then
      if Heroi.POSY <= 140  then
        Heroi.POSY = 140
      end
    end
    if Heroi.POSX >= 122 and Heroi.POSX <= 220 then
      if Heroi.POSY >= 180 and Heroi.POSY <= 200 then
        Heroi.POSY = 180
      end
    end
    if Heroi.POSY >= 130 and Heroi.POSY <= 270 then
      if Heroi.POSX >= 337 then
        Heroi.POSX = 340
      end
    end
  end
  -------------------------------------------------------- INTERA????O E
  if love.keyboard.isDown("e") then
    --------------- VAI DA TELA 3 PRA 1
    if Tela == Tela3.ImgFundo then
      if Heroi.POSX > 115 and Heroi.POSX < 155 and Heroi.POSY > 140 and Heroi.POSY < 180 then
        if TravaDaPorta == false then
          Randow = love.math.random(1, 10)
        end
        if Randow <= Dificuldade then
          TelaAntiga = Tela3
          love.window.setMode(1000, 600, {resizable=true, vsync=false})
          Tela = ImgSusto1
          AparicaoHeroi = false
          love.audio.play(JumpScare)
          Vida = Vida - 20
          TravaDaPorta = false
        end
        if Randow > Dificuldade then
          love.window.setMode(Tela1.Larg, Tela1.Alt, {resizable=true, vsync=false})
          Tela = Tela1.ImgFundo
          love.audio.play(PortaAbrindo)
          Heroi.POSX = 350
          Heroi.POSY = 650
          TravaDaPorta = false
        end
      end
    end
    --------------- VAI DA TELA 4 PARA 2
    if Tela == Tela4.ImgFundo then
      if Nivel >= 2 then
        if Heroi.POSX > 290 and Heroi.POSX < 350 and Heroi.POSY > 120 and Heroi.POSY < 150 then
          if TravaDaPorta == false then
            Randow = love.math.random(1, 10)
          end
          if Randow <= Dificuldade then
            TelaAntiga = Tela4
            love.window.setMode(1000, 600, {resizable=true, vsync=false})
            Tela = ImgSusto1
            AparicaoHeroi = false
            love.audio.play(JumpScare)
            Vida = Vida - 20
            TravaDaPorta = false
          end
          if Randow > Dificuldade then
            love.window.setMode(Tela2.Larg, Tela2.Alt, {resizable=true, vsync=false})
            Tela = Tela2.ImgFundo
            love.audio.play(PortaAbrindo)
            Heroi.POSX = 260
            Heroi.POSY = 80
            TravaDaPorta = false
          end
        end
      end
    end

    --------------- VAI DA TELA 1 PRA 3
    if Tela == Tela1.ImgFundo then
      if Heroi.POSX > 310 and Heroi.POSX < 390 and Heroi.POSY > 660 and Heroi.POSY < 700 then
        if TravaDaPorta == false then
          Randow = love.math.random(1, 10)
        end
        if Randow <= Dificuldade then
          TelaAntiga = Tela1
          love.window.setMode(1000, 600, {resizable=true, vsync=false})
          Tela = ImgSusto1
          AparicaoHeroi = false
          love.audio.play(JumpScare)
          Vida = Vida - 20
          TravaDaPorta = false
        end
        if Randow > Dificuldade then
          love.window.setMode(Tela3.Larg, Tela3.Alt, {resizable=true, vsync=false})
          Tela = Tela3.ImgFundo
          love.audio.play(PortaAbrindo)
          Heroi.POSX = 170
          Heroi.POSY = 160
          TravaDaPorta = false
        end
      end
    end
    --------------- TELA 2
    if Tela == Tela2.ImgFundo then
      --------------- TELA 2 PEGA O TOTEM 3
      if Heroi.POSX > 115 and Heroi.POSX < 150 and Heroi.POSY > 285 and Heroi.POSX < 300 then
        if love.keyboard.isDown("e") then
          if PossuiCodigo1 == true then
            PossuiTotem3 = true
            PossuiCodigo1 = false
            Tela2.ImgFundo = love.graphics.newImage("imagens/Interior21.png")
            Tela = Tela2.ImgFundo
          end
        end
      end
      --------------- TELA 2 PARA 4
      if Heroi.POSX > 320 and Heroi.POSX < 350 and Heroi.POSY > 30 and Heroi.POSY < 70 then
        if TravaDaPorta == false then
          Randow = love.math.random(1, 10)
        end
        if Randow <= Dificuldade then
          TelaAntiga = Tela2
          love.window.setMode(1000, 600, {resizable=true, vsync=false})
          Tela = ImgSusto1
          AparicaoHeroi = false
          love.audio.play(JumpScare)
          Vida = Vida - 20
          TravaDaPorta = false
        end
        if Randow > Dificuldade then
          love.window.setMode(Tela4.Larg, Tela4.Alt, {resizable=true, vsync=false})
          Tela = Tela4.ImgFundo
          love.audio.play(PortaAbrindo)
          Heroi.POSX = 320
          Heroi.POSY = 160
          TravaDaPorta = false
        end
      end
    end
    --------------- TELA 6 PARA O JUMPSCARE
    if JumpScareTela6 == true then
      if Tela == Tela6.ImgFundo then
        if Heroi.POSX > 240 and Heroi.POSX < 330 and Heroi.POSY > 190 and Heroi.POSY < 210 then
          TelaAntiga = Tela6
          love.window.setMode(1000, 600, {resizable=true, vsync=false})
          Tela = ImgSusto1
          AparicaoHeroi = false
          love.audio.play(JumpScare)
          Vida = Vida - 20
        end
      end
    end
    --------------- PEGAR CHAVE 
    if Tela == Tela5.ImgFundo then
      if Heroi.POSX > 100 and Heroi.POSX < 170 and Heroi.POSY > 170 and Heroi.POSY < 190 then 
        if EventoChave1 == true then
          PossuiChave1 = true
          EventoChave1 = false
          EventoEstatua1 = true
          ApareceInterfaceTexto = true
        end
      end
    end
    --------------- COLOCAR CHAVE NO BAU 1
    if Tela == Tela1.ImgFundo then
      if Heroi.POSX > 480 and Heroi.POSX < 530 and Heroi.POSY > 210 and Heroi.POSY < 260 then
        ApareceInterfaceTexto = true
        if EventoEstatua1 == true then
          PossuiTotem1 = true
          PossuiChave1 = false
          EventoEstatua1 = false
        end
      end
    end
  end
  ----------------------------------------------------------------- INTERA????O Q
  if love.keyboard.isDown("q") then
    if ApareceInterfaceTexto == true then
      ApareceInterfaceTexto = false
      if Tela == ImgAeroporto10 then
        PrimeiraVezRitual = false
      end
    end
    ------ VAI DA FECHADURA PARA 3
    if Tela == ImgFechaduraSusto or Tela == ImgFechadura then
      if TelaAntiga == Tela3.ImgFundo then
        AparicaoHeroi = true
        love.window.setMode(Tela3.Larg, Tela3.Alt, {resizable=true, vsync=false})
        Tela = Tela3.ImgFundo
        Heroi.POSX = 170
        Heroi.POSY = 160
      end
    end
    ------ VAI DA FECHADURA PARA 4
    if Tela == ImgFechaduraSusto or Tela == ImgFechadura then
      if TelaAntiga == Tela4.ImgFundo then
        AparicaoHeroi = true
        love.window.setMode(Tela4.Larg, Tela4.Alt, {resizable=true, vsync=false})
        Tela = Tela4.ImgFundo
        Heroi.POSX = 320
        Heroi.POSY = 160
      end
    end
    ------ VAI DA FECHADURA PARA 1
    if Tela == ImgFechaduraSusto or Tela == ImgFechadura then
      if TelaAntiga == Tela1.ImgFundo then
        AparicaoHeroi = true
        love.window.setMode(Tela1.Larg, Tela1.Alt, {resizable=true, vsync=false})
        Tela = Tela1.ImgFundo
        Heroi.POSX = 350
        Heroi.POSY = 650
      end
    end
    ------ VAI DA FECHADURA PARA 2
    if Tela == ImgFechaduraSusto or Tela == ImgFechadura then
      if TelaAntiga == Tela2.ImgFundo then
        AparicaoHeroi = true
        love.window.setMode(Tela2.Larg, Tela2.Alt, {resizable=true, vsync=false})
        Tela = Tela2.ImgFundo
        Heroi.POSX = 260
        Heroi.POSY = 80
      end
    end
    ------ VAI DA TELA 3 PARA FECHADURA
    if Heroi.POSX > 115 and Heroi.POSX < 155 and Heroi.POSY > 140 and Heroi.POSY < 180 then
      if Tela == Tela3.ImgFundo then
        Randow = love.math.random(1, 10)
        TravaDaPorta = true
        if Randow <= Dificuldade then  
          AparicaoHeroi = false
          TelaAntiga = Tela3.ImgFundo
          love.window.setMode(TelaFechadura.Larg, TelaFechadura.Alt, {resizable=true, vsync=false}) 
          Tela = ImgFechaduraSusto
          Heroi.POSX = 0
          Heroi.POSY = 0
          love.audio.play(PAMMM)
        end
        if Randow > Dificuldade then
          AparicaoHeroi = false
          TelaAntiga = Tela3.ImgFundo
          love.window.setMode(TelaFechadura.Larg, TelaFechadura.Alt, {resizable=true, vsync=false}) 
          Tela = ImgFechadura
          Heroi.POSX = 0
          Heroi.POSY = 0
        end
      end
    end
    ------ VAI DA TELA 4 PARA FECHADURA
    if Tela == Tela4.ImgFundo then
      if Nivel >= 2 then
        if Heroi.POSX > 290 and Heroi.POSX < 350 and Heroi.POSY > 120 and Heroi.POSY < 150 then
          Randow = love.math.random(1, 10)
          TravaDaPorta = true
          if Randow <= Dificuldade then  
            AparicaoHeroi = false
            TelaAntiga = Tela4.ImgFundo
            love.window.setMode(TelaFechadura.Larg, TelaFechadura.Alt, {resizable=true, vsync=false}) 
            Tela = ImgFechaduraSusto
            Heroi.POSX = 0
            Heroi.POSY = 0
            love.audio.play(PAMMM)
          end
          if Randow > Dificuldade then
            AparicaoHeroi = false
            TelaAntiga = Tela4.ImgFundo
            love.window.setMode(TelaFechadura.Larg, TelaFechadura.Alt, {resizable=true, vsync=false}) 
            Tela = ImgFechadura
            Heroi.POSX = 0
            Heroi.POSY = 0
          end
        end
      end
    end
    ------ VAI DA TELA 2 PARA FECHADURA
    if Tela == Tela2.ImgFundo then
      if Heroi.POSX > 320 and Heroi.POSX < 350 and Heroi.POSY > 30 and Heroi.POSY < 70 then
        Randow = love.math.random(1, 10)
        TravaDaPorta = true
        if Randow <= Dificuldade then  
          AparicaoHeroi = false
          TelaAntiga = Tela2.ImgFundo
          love.window.setMode(TelaFechadura.Larg, TelaFechadura.Alt, {resizable=true, vsync=false}) 
          Tela = ImgFechaduraSusto
          Heroi.POSX = 0
          Heroi.POSY = 0
          love.audio.play(PAMMM)
        end
        if Randow > Dificuldade then
          AparicaoHeroi = false
          TelaAntiga = Tela2.ImgFundo
          love.window.setMode(TelaFechadura.Larg, TelaFechadura.Alt, {resizable=true, vsync=false}) 
          Tela = ImgFechadura
          Heroi.POSX = 0
          Heroi.POSY = 0
        end
      end
    end
    ------ VAI DA TELA 1 PARA FECHADURA
    if Heroi.POSX > 310 and Heroi.POSX < 390 and Heroi.POSY > 660 and Heroi.POSY < 700 then
      if Tela == Tela1.ImgFundo then
        Randow = love.math.random(1, 10)
        TravaDaPorta = true
        if Randow <= Dificuldade then  
          AparicaoHeroi = false
          TelaAntiga = Tela1.ImgFundo
          love.window.setMode(TelaFechadura.Larg, TelaFechadura.Alt, {resizable=true, vsync=false}) 
          Tela = ImgFechaduraSusto
          Heroi.POSX = 0
          Heroi.POSY = 0
          love.audio.play(PAMMM)
        end
        if Randow > Dificuldade then
          AparicaoHeroi = false
          TelaAntiga = Tela1.ImgFundo
          love.window.setMode(TelaFechadura.Larg, TelaFechadura.Alt, {resizable=true, vsync=false}) 
          Tela = ImgFechadura
          Heroi.POSX = 0
          Heroi.POSY = 0
        end
      end
    end
  end
  --------------------------------------------
  if love.keyboard.isDown("right") then
    Boss.POSX = Boss.POSX + Boss.SPEED * dt
  end
  if love.keyboard.isDown("left") then
    Boss.POSX = Boss.POSX - Boss.SPEED * dt
  end
  if love.keyboard.isDown("up") then
    Boss.POSY = Boss.POSY - Boss.SPEED * dt
  end
  if love.keyboard.isDown("down") then
    Boss.POSY = Boss.POSY + Boss.SPEED * dt
  end
  --------------------------------------------
  if Heroi.POSX > Boss.POSX then
    --Boss.POSX = Boss.POSX + Boss.SPEED * dt
  end
  if Heroi.POSX < Boss.POSX then
    --Boss.POSX = Boss.POSX - Boss.SPEED * dt
  end
  if Heroi.POSY > Boss.POSY then
    --Boss.POSY = Boss.POSY + Boss.SPEED * dt
  end
  if Heroi.POSY < Boss.POSY then
    --Boss.POSY = Boss.POSY - Boss.SPEED * dt
  end
end
function love.draw()
  ------- DESENHA A TELA ATUAL
  love.graphics.draw(Tela,0,0,0,1,1)
  ------- SAIR DA TELA DO SUSTO
  if Tela == ImgSusto1 then
    if love.keyboard.isDown('q') then
      if TelaAntiga == Tela6 then
        if JumpScareTela6 == true then
          love.window.setMode(Tela6.Larg, Tela6.Alt, {resizable=true, vsync=false})
          Tela = Tela6.ImgFundo
          JumpScareTela6 = false
          AparicaoHeroi = true
        end
      end
      if TelaAntiga == Tela3 then
        love.window.setMode(Tela3.Larg, Tela3.Alt, {resizable=true, vsync=false})
        Tela = Tela3.ImgFundo
        AparicaoHeroi = true
        Heroi.POSX = 170
        Heroi.POSY = 160
      end
      if TelaAntiga == Tela1 then
        love.window.setMode(Tela1.Larg, Tela1.Alt, {resizable=true, vsync=false})
        Tela = Tela1.ImgFundo
        AparicaoHeroi = true
        Heroi.POSX = 350
        Heroi.POSY = 650
      end
      if TelaAntiga == Tela4 then
        love.window.setMode(Tela4.Larg, Tela4.Alt, {resizable=true, vsync=false})
        Tela = Tela4.ImgFundo
        AparicaoHeroi = true
        Heroi.POSX = 320
        Heroi.POSY = 160
      end
      if TelaAntiga == Tela2 then
        love.window.setMode(Tela2.Larg, Tela2.Alt, {resizable=true, vsync=false})
        Tela = Tela2.ImgFundo
        AparicaoHeroi = true
        Heroi.POSX = 260
        Heroi.POSY = 80
      end
    end
  end
  ------- DESENHA O HEROI
  if AparicaoHeroi == true then
    love.graphics.draw(Heroi.DIRECAO, Heroi.POSX, Heroi.POSY, 0, 1, 1, ImgBaixo:getWidth()/2, ImgBaixo:getHeight()/2)
  end
  ------- DESENHA O BOSS
  if AparicaoBoss == true then
    love.graphics.draw(ImgBoss, Boss.POSX, Boss.POSY, 0, 1, 1, ImgBoss:getWidth()/2, ImgBoss:getHeight()/2)
  end
  ------- MOSTRA A POSI????O DO MOUSE
  --love.graphics.print("Mouse em [" .. x .. " , " .. y .. "]", x, y)
  --love.graphics.print(" [" .. Heroi.POSX .. " , " .. Heroi.POSY .. "]", Heroi.POSX, Heroi.POSY)

  ------- AEROPORTO 12
  if Tela == ImgAeroporto12 then
    if ApareceInterfaceTexto == true then
      love.graphics.draw(InterfaceTexto, 200, love.graphics.getHeight()-100)
      love.graphics.print("Agora o portao esta livre", 250, love.graphics.getHeight()-50)
      love.graphics.draw(Rosto, 450, love.graphics.getHeight()-200)
    end
    ------- AEROPORTO 12 - 1
    if x > 350 and x < 400 and y > 300 and y < 350 then
      love.graphics.rectangle('line', 350,300, 50, 50)
    end
    ------- AEROPORTO 12 - FORA
    if x > 180 and x < 590 and y > 20 and y < 300 then
      ApareceInterfaceTexto = true
    end
  end
  ------- AEROPORTO 11
  if Tela == ImgAeroporto11 then
    if ApareceInterfaceTexto == true then
      love.graphics.draw(InterfaceTexto, 200, love.graphics.getHeight()-100)
      love.graphics.print("N??o Consigo sair por aqui", 250, love.graphics.getHeight()-80)
      love.graphics.draw(Rosto, 450, love.graphics.getHeight()-200)
    end
    ------- AEROPORTO 11 - 1
    if x > 350 and x < 400 and y > 300 and y < 350 then
      love.graphics.rectangle('line', 350,300, 50, 50)
    end
    ------- AEROPORTO 11 - FORA
    if x > 260 and x < 420 and y > 80 and y < 140 then
      ApareceInterfaceTexto = true
    end
  end
  ------- AEROPORTO 1
  if Tela == ImgAeroporto1 then
    ------- AEROPORTO 1 - 2
    if x > 250 and x < 450 and y > 80 and y < 200 then
      love.graphics.rectangle('line', 250,80, 200, 120)
    end
    ------- AEROPORTO 1 - 11
    if x > 300 and x < 350 and y > 300 and y < 350 then
      love.graphics.rectangle('line', 300,300, 50, 50)
    end
  end
  ------- AEROPORTO 2
  if Tela == ImgAeroporto2 then
    ------- AEROPORTO 2 - 3
    if x > 500 and x < 600 and y > 100 and y < 200 then
      love.graphics.rectangle('line', 500,100, 100, 100)
    end
    ------- AEROPORTO 2 - 1
    if x > 350 and x < 400 and y > 300 and y < 350 then
      love.graphics.rectangle('line', 350,300, 50, 50)
    end
    ------- AEROPORTO 2 - 9
    if x > 100 and x < 200 and y > 100 and y < 200 then
      love.graphics.rectangle('line', 100,100, 100, 100)
    end
  end
  ------- AEROPORTO 3
  if Tela == ImgAeroporto3 then
    if ApareceInterfaceTexto == true then
      love.graphics.draw(InterfaceTexto, 200, love.graphics.getHeight()-100)
      love.graphics.print("Parece uma escada", 300, love.graphics.getHeight()-50)
      love.graphics.draw(Rosto, 450, love.graphics.getHeight()-200)
    end
    ------- AEROPORTO 3 - 5
    if x > 360 and x < 370 and y > 70 and y < 200 then
      love.graphics.rectangle('line', 360,70, 10, 130)
      ApareceInterfaceTexto = true

    end
    ------- AEROPORTO 3 - 2
    if x > 300 and x < 350 and y > 300 and y < 350 then
      love.graphics.rectangle('line', 300,300, 50, 50)
    end
  end
  ------- AEROPORTO 9
  if Tela == ImgAeroporto9 then

    ------- AEROPORTO 9 - 2
    if x > 300 and x < 350 and y > 300 and y < 350 then
      love.graphics.rectangle('line', 300,300, 50, 50)
    end
    ------- AEROPORTO 9 - 10
    if x > 240 and x < 380 and y > 160 and y < 180 then
      love.graphics.rectangle('line', 240,160, 140, 20)
    end
  end
  ------- AEROPORTO 10 - 9
  if Tela == ImgAeroporto10 then
    if PrimeiraVezRitual == true then
      if ApareceInterfaceTexto == true then
        love.graphics.draw(InterfaceTexto, 200, love.graphics.getHeight()-100)
        love.graphics.print("O QUE TA ACONTECENDO", 250, love.graphics.getHeight()-60)
        love.graphics.print("NESSA ILHA", 250, love.graphics.getHeight()-40)
        love.graphics.draw(Rosto, 450, love.graphics.getHeight()-200)
      end
    end
    if PrimeiraVezRitual == false then
      if ApareceInterfaceTexto == true then
        love.graphics.draw(InterfaceTexto, 200, love.graphics.getHeight()-100)
        love.graphics.print("QUE POHA ?? ESSA!!!!", 250, love.graphics.getHeight()-60)
        love.graphics.draw(Rosto, 450, love.graphics.getHeight()-200)
      end
    end
    if x > 350 and x < 400 and y > 300 and y < 350 then
      love.graphics.rectangle('line', 350,300, 50, 50)
    end
  end
  ------- AEROPORTO 4
  if Tela == ImgAeroporto4 then
    ------- AEROPORTO 4 - 5
    if x > 120 and x < 170 and y > 10 and y < 270 then
      love.graphics.rectangle('line', 120,10, 50, 260)
    end
    ------- AEROPORTO 4 - 2
    if x > 400 and x < 470 and y > 120 and y < 150 then
      love.graphics.rectangle('line', 400,120, 70, 30)
    end
  end
  ------- AEROPORTO 8
  if Tela == ImgAeroporto8 then
    ------- AEROPORTO 8 - 7
    if x > 300 and x < 350 and y > 300 and y < 350 then
      love.graphics.rectangle('line', 300,300, 50, 50)
    end
    ------- AEROPORTO 8 - 5
    if x > 340 and x < 360 and y > 125 and y < 140 then
      love.graphics.rectangle('line', 340,125, 20, 15)
    end
  end
  ------- AEROPORTO 5
  if Tela == ImgAeroporto5 then
    ------- AEROPORTO 5 - 6
    if x > 285 and x < 440 and y > 20 and y < 60 then
      love.graphics.rectangle('line', 285,20, 155, 40)
    end
    ------- AEROPORTO 5 - 4
    if x > 300 and x < 350 and y > 300 and y < 350 then
      love.graphics.rectangle('line', 300,300, 50, 50)
    end
  end
  ------- AEROPORTO 6
  if Tela == ImgAeroporto6 then
    ------- AEROPORTO 6 - 7
    if x > 350 and x < 400 and y > 150 and y < 200 then
      love.graphics.rectangle('line', 350,150, 50, 50)
    end
    ------- AEROPORTO 6 - 8
    if x > 350 and x < 400 and y > 300 and y < 350 then
      love.graphics.rectangle('line', 350,300, 50, 50)
    end
  end
  ------- AEROPORTO 7
  if Tela == ImgAeroporto7 then
    if x > 360 and x < 390 and y > 90 and y < 150 then
      love.graphics.print("Pegar Totem", x, y)
    end
    if ApareceInterfaceTexto == true then
      love.graphics.draw(InterfaceTexto, 200, love.graphics.getHeight()-100)
      love.graphics.print("QUE SOM FOI ESSE?", 300, love.graphics.getHeight()-50)
      love.graphics.draw(Rosto, 450, love.graphics.getHeight()-200)
    end
    ------- AEROPORTO 7 - 8
    if x > 350 and x < 400 and y > 300 and y < 350 then
      love.graphics.rectangle('line', 350,300, 50, 50)
    end
    if x > 360 and x < 390 and y > 90 and y < 150 then
      if love.mouse.isDown(1)then 
        ApareceInterfaceTexto = true
      end
    end
  end
  -------- IMAGENS TELA 3
  if Tela == Tela3.ImgFundo then
    ------- INTERA????O DO HEROI COM A PORTA DA SALA 3 PARA A 1
    if Heroi.POSX > 115 and Heroi.POSX < 155 and Heroi.POSY > 140 and Heroi.POSY < 180 then
      love.graphics.print("Press E to enter or Press Q to look the Door Lock",70 , 90)
      love.graphics.rectangle('line', 115,140, 40, 40)
    end
  end
  -------- IMAGENS TELA 1
  if Tela == Tela1.ImgFundo then
    ------- INTERA????O DO HEROI COM A PORTA DA SALA 1 PARA A 3
    if Heroi.POSX > 310 and Heroi.POSX < 390 and Heroi.POSY > 660 and Heroi.POSY < 700 then
      love.graphics.print("Press E to enter or Press Q to look the Door Lock",70 , 90)
      love.graphics.rectangle('line', 310,660, 80, 40)
    end
    ------- INTERA????O COM BAU 1
    if Heroi.POSX > 480 and Heroi.POSX < 530 and Heroi.POSY > 210 and Heroi.POSY < 260 then 
      love.graphics.print("Press E to look better",70 , 90)
      love.graphics.rectangle('line', 480,210, 50, 50)
      if EventoEstatua1 == false then
        if ApareceInterfaceTexto == true then
          love.graphics.draw(InterfaceTexto, 200, love.graphics.getHeight()-100)
          love.graphics.print("Esta Trancado", 300, love.graphics.getHeight()-50)
          love.graphics.draw(Rosto, 450, love.graphics.getHeight()-200)
        end
      end
    end
  end
  -------- IMAGENS TELA 5
  if Tela == Tela5.ImgFundo then
    ------- MOSTRA PEGAR CHAVE NA TELA 5
    if Heroi.POSX > 100 and Heroi.POSX < 170 and Heroi.POSY > 170 and Heroi.POSY < 190 then
      if EventoChave1 == true then
        love.graphics.print("Press E to look better",70 , 90)
        love.graphics.rectangle('line', 100,170, 70, 20)
      end
    end
  end
  ------- JumpScare DA TELA 6  
  if JumpScareTela6 == true then
    if Tela == Tela6.ImgFundo then
      if Heroi.POSX > 240 and Heroi.POSX < 330 and Heroi.POSY > 190 and Heroi.POSY < 210 then
        love.graphics.print("Press E to look better",70 , 90)
        love.graphics.rectangle('line', 240,190, 90, 20)
      end
    end
  end
  ------ TELA 2 TOTEM TRANCADO
  if Tela == Tela2.ImgFundo then
    if Heroi.POSX > 115 and Heroi.POSX < 150 and Heroi.POSY > 285 and Heroi.POSX < 300 then
      love.graphics.print("Press E to look better",70 , 90)
      love.graphics.rectangle('line', 115,285, 35, 15)
      if love.keyboard.isDown("e") then
        if PossuiCodigo1 == false then
          love.graphics.print("Esta Trancada precisa",70 , 100)
          love.graphics.print("de uma Senha",70 , 110)
        end
      end
    end
  end
  ------ TELA 8
  if Tela == Tela8.ImgFundo then
    if Heroi.POSX > 30 and Heroi.POSX < 60 then
      love.graphics.print("Deve ser o",70 , 90)
      love.graphics.print("Codigo",70 , 100)
    end
  end
  ------- BLOQUEIO TELA 5
  if Tela == Tela5.ImgFundo then
    if EventoChave1 == true then
      if Heroi.POSX > 100 and Heroi.POSX < 170 and Heroi.POSY > 170 and Heroi.POSY < 190 then 
        if ApareceInterfaceTexto == true then
          love.graphics.push()
          love.graphics.scale(0.5, 0.5)
          love.graphics.draw(InterfaceTexto, 600, 640)
          love.graphics.print("Essa chave deve ", 650, 680)
          love.graphics.print("abrir alguma coisa", 650, 700)
          love.graphics.draw(Rosto, 800, 540)
          love.graphics.pop()
        end
      end
    end
    if Tela5.ImgFundo == ImgFundo51 then
      if Heroi.POSX > 450 then
        love.graphics.print("PARECE UM BLOQUEIO HMMMMMMMMMMM",250, love.graphics.getHeight()-300)
      end 
    end
  end
  ------- TELA 4
  if Tela == Tela4.ImgFundo then
    if Heroi.POSX > 290 and Heroi.POSX < 350 and Heroi.POSY > 120 and Heroi.POSY < 150 then
      love.graphics.rectangle('line', 290,120, 60, 30)
    end
  end
  ------- MOSTRA NA TELA A CHAVE 1
  if PossuiChave1 == true then
    love.graphics.draw(ImgChave1, 210, love.graphics.getHeight()-20)
  end
  ------- MOSTRA NA TELA O CODIGO 1
  if PossuiCodigo1 == true then
    love.graphics.draw(ImgCodigo1, 210, love.graphics.getHeight()-36)
  end
  ------- MOSTRA NA TELA O TOTEM 1
  if PossuiTotem1 == true then
    love.graphics.draw(ImgTotem1, 250, love.graphics.getHeight()-50)
  end
  ------- MOSTRA NA TELA O TOTEM 2
  if PossuiTotem2 == true then
    love.graphics.draw(ImgTotem2, 250, love.graphics.getHeight()-50)
  end
  ------- MOSTRA NA TELA O TOTEM 3
  if PossuiTotem3 == true then
    love.graphics.draw(ImgTotem3, 250, love.graphics.getHeight()-50)
  end
  ------- MOSTRA NA TELA A VIDA
  if ApareceVida == true then
    love.graphics.draw(HUD, 0, love.graphics.getHeight()-53)
  end

  if Vida == 0 then
    Tela = ImgMorte
    love.audio.play(SomMorte)
    ApareceVida = false
  end
end
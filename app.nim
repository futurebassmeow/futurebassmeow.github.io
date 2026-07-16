include karax/prelude

var list = @[kstring "les", "boutons", "ici", "ne", "fonctionnent", "pas"]

type STATE = enum
  MAIN

var currentState = MAIN

type PageContent = object
  txBody: kstring

type Project = object
  name: kstring
  image: kstring

var projects = @[
  Project(name: "DATAMOSH THERAPY"),
  Project(name: "RIPPLES"),
  Project(name: "PERC GENERATOR"),
  Project(name: "RISK OF RAIN REDESIGN"),
]

var rdthoughts: seq[string] = @[
  """
    texte bien trop long mais fallait que je yap un peu 
  """,
  """
    Au collège, quand jai commencé a faire de la musique, je ne me suis jamais posé la question de **pourquoi** je le faisais. à l'époque, mon dumb ass brain était incapable de se fixer et grind un seul intérêt, genre une passion, un sport (??), une forme d'art, peu importe. Apres des années à essayer de comprendre ce que j'aimais, ce que je voulais faire dans la vie, et comment je voulais le faire, j'ai découvert la musique électronique plutôt par hasard, et j'ai commencé à apprendre assez instinctivement. Jusque lors je n'avais jamais été sérieusement intéressé par le sujet. Ma culture musicale se résumait à ncs et aux tops nrj12. Cette culture, je l'ai donc forgée avec le temps, en apprenant, en écoutant des nouvelles choses et surtout, en grandissant. la musique était devenu le seul centre d'intérêt que j'avais et qui avait comme don de ne pas me lasser, donc jai continué. Vers le lycée, jai simplement réalisé que j'étais arrivé trop loin pour m'arrêter, donc jai voulu m'orienter là dedans.
  """,
  """
    je passerai les détails ici, si vous lisez ça vous savez. Mon obsession après avoir eu mon bac a été de continuer d'apprendre. Le sound design, la production, le mix, etc.... jai effectivement appris ces choses là, décroché un diplôme, puis, en 2024, DATAMOSH THERAPY est né. 2 ans de projets hybrides ableton/flstudio/pro-tools et moi qui raconte des trucs que le moi du futur aurait sûrement très honte (c'est le cas). Javais atteint le seul objectif que j'avais en tête à ce moment. Cet album était la concrétisation de tout ce que javais imaginé depuis 2020, quand j'écrivais encore des tracklists avec des songs qui n'existent même pas dans les notes de mon ordi. Avec 4 ans de retard, le plan s'était ENFIN déroulé comme prévu. L'ep est sorti, jai eu des bon retours, la release party dans un bar perdu au fond du québec était sûrement la meilleure soirée de ma vie. Maintenant quoi ? je ne sais pas. 
  """,
  """
    une des choses qui m'a poussé à continuer cet album, entre 2022 et 2024 était la reconnaissance. J'allais enfin pouvoir montrer aux gens de quoi je suis capable, qu'est-ce qui me construit, et ce que je peux faire. Même si c'était 2 personnes, la reconnaissance de ces 2 personnes me suffisait. Le simple fait de me dire que jallais peut etre pouvoir etre dans l'esprit d es gens autrement qu'en étant physiquement devant eux était un moteur assez puissant pour me forcer à continuer. Anyway, pour une raison qui m'est encore inconnue (les gens diront que cest parce que l'album est bien -- ), jai fini par atteindre bien plus de personnes que je ne l'imaginais. et ça m'a fait du bien. 
  """,
  """
    Donc quand on est un artiste, la tradition veut qu'on ne le soit pas seulement pour le temps d'un album, mais que, évidemment, on soit capable de réitérer ce processus plusieurs fois. Ce que ça voulait dire pour moi, maintenant que j'étais dans la cour des grands, c'est: il fallait faire mieux, plus rapidement, et arrêter de gamberge pour rien. C'est alors naturellement que j'ai décidé de me lancer dans la production d'un deuxième album, immédiatement apres le premier (FATAL FIELDS, l'intro du projet a été produite le jour de la sortie de DMT et enregistrée le lendemain). Cest précisément là que la descente aux enfers a commencé. Jai détesté CHAQUE SECONDE de ce projet, et ce pendant tout le temps de sa conception. C'était objectivement mieux que son prédécesseur, mais mon cerveau nétait pas capable de l'aimer. Pourquoi ? je ne le saurai jamais, mais ça m'a détruit. Une des différences entre les deux projets, c'est que le contexte de conception n'était pas le même. J'ai réalisé DMT pendant mes études, javais la tête dans le son en permanence, et quand je rentrais de cours il fallait grind pour pouvoir deliver le projet à temps. Cela a résulté en des sessions très courtes, souvent entre 23h et 3-4h du matin. Le fun de la production venait à courtes doses, donc naturellement, j'allais paradoxalement plus vite puisque j'avais moins le temps de travailler sur le projet, mais je pouvais gamberger dessus tout le long de la journée. Son successeur (que je nommerai RVS), quand à lui, a été réalisé dans un autre contexte: littéralement sans-emploi et chez le padre, donc toute la journée devant l'ordi à composer, enregistrer, mixer, etc etc etc. Ca aurait pu être un rêve, mais mon cerveau n'est pas capable de se réguler dans si peu de limitations. Donc au lieu de savoir quoi faire et de le faire, je me perdais continuellement sur internet a la recherche d'inspiration, qui n'est jamais venu. En mai 2025, jai donc pris la décision de m'éloigner de la musique. J'avais besoin de voir, faire, vivre autre chose. et c'est là que j'ai découvert strudel.
  """,
  """
    Je vais pas expliquer ce que c'est, vous pouvez simplement aller voir par vous-même. Concrètement: on écrit du code qui génère d ela muisque. c'était une façon différente et totalement inédite de composer comparé à ce que je savais déjà, et je suis tombé in love <3 comme disent les jeunes. après beaucoup d'itérations sur la documentation, jai réussi à atteindre un niveau similaire à celui que j'avais sur ableton / fl studio, bien que strudel était relativement bien plus limité. Cependant, la passion n'était pas revenu entièrement, et j'ai vite abandonné. Ce que strudel a réussi, en revanche, c'est à m'orienter vers d'autres choses: la programmation. Je ne le savais pas encore, mais ce site allait me changer d'une façon que je n'aurais jamais imaginé.
  """,
  """
    La seule fois où javais réellement touché à du code, c'était au lycée. Jai fait un bac STI2D SIN, ce qui m'a permis d'apprendre le très horrible arduino. C'était... une mauvaise expérience que je ne retenterai pour rien au monde, et ça m'a convaincu que la programmation était quelque chose qu'il ne fallait pas que je touche. Puis, en novembre 2025, après ce que j'appellerai une "semaine gamberge", j'ai acheté Risk of Rain 2, dans le seul objectif de chercher de la dopamine pour mon cerveau trop depressed à l'époque. et c'est LA que je suis tombé dans le rabbit hole.
  """,
  """
    Je nai jamais réellement été un gamer. les jeux vidéos sont pour moi plus un moyen de passer le temps plutôt qu'une passion. C'est un monde qui ne m'a jamais réellement fait vibrer comme la musique pourrait le faire, pour la raison suivante: je n'avais pas le bon angle. Jouer aux jeux vidéos? boring. faire des jeux vidéos? hmmmmm qu... FAIRE DES JEUX VIDEOS??? jy avait jamais pensé et ça sonnait comme une excellente idée???? La vague risk of rain m'avait eu: TOUT ce que j'aimais faire était réuni dans un seul media, accessible à l'infini depuis mon ordinateur: worldbuilding, dessin (bien que ror2 soit en 3d, ce nest pas le cas de son prédécesseur), musique, sound design, il me manquait juste.... la passion pour le code.
  """,
  """
    alors jai installé gamemaker. on m'a dit que c'était un des meilleurs et des plus simples. Jai une aversion pour la plupart des trucs trendy, et j'aime énormément utiliser des choses qui ne sont pas les premières options lorsqu'on s'intéresse à un sujet. unity était trop overwhelming, godot etait trop bizarre, et unreal était trop .... trop. gamemaker était parfait. de novembre à février, jai enchainé les tutoriels, les demos de jeu, l'apprentissage, tout. je comprenait enfin "the joy of programming". c'était juste ce que j'aimais le + faire, à grande échelle: simplement manipuler et organiser des groupes de données dans un ordre qui permettait de construire ce qu'on voulait. Absolument rien à voir avec arduino. c'était des problèmes de logiques à résoudre en permanence, ça m'a réellement animé. Mais j'en voulais plus.
  """,
  """
    mars 2026, j'installe Love2D. Un genre de cousin de gamemaker, dont la différence principale est d'être bien plus minimaliste que ce dernier. La seule chose que Love nous donne, c'est un .exe qui ne fait.... rien. Pour cause? c'est à l'utilisateur de tout programmer. contrairement aux principaux game engines, qui fournissent une interface visuelle ainsi que des systèmes pour rendre la conception de jeu plus simple, love2D et la plupart de ses cousins frameworks (j'y reviens plus tard) nous donne seulement des "librairies", des ensembles de fonctions permettant de dessiner des choses à l'écran. ET j'ai galéré. c'était plaisant, mais jai galéré. L'avantage de ce genre comparativement aux gros engine est qu'ils nous offrent bien plus de liberté, et nous permette de faire les choses telles que nous le voulons et non telles que l'engine nous impose. Après avoir pris en main la logique du "no engine", j'étais bien plus à l'aise avec la programmation. En revanche, je ressentait le besoin de descendre encore plus bas pour trouver le vrai bonheur. Ce bonheur s'est avéré vivre chez une personne du nom de Raysan5.
  """,
  """
    raylib fonctionne d'une manière similaire à love2D: c'est un ensemble de fonctions regroupées dans un fichier texte qui permet d'ouvrir une fenêtre, gérer les inputs clavier et souris ainsi que dessiner des choses à l'écran. La particularité de raylilb, cependant, est sa disponibilité: raylib est distribué dans la quasi totalité des langages de programmation "mainstreams" ainsi que quelques uns plus niches. Donc je pouvais faire ce que je voulais, avec les outils que je voulais, et comment je le voulais. c'était PARFAIT.
  """,
  """
    Jai pas fini d'écrire jaime pas raconter ma vie je voulais juste tester cque jpouvais faire avec le site en tt cas cest trop cool restez branché.e.s
  """,
]
proc renderProjects(): VNode =
  buildHtml(tdiv):
    h2:
      text "# archives #"
    p:
      text "anciens projets réalisés dans mon temps libre jsp"
    ul:
      for proj in projects:
        li:
          text proj.name
        p:
          text ""

var pcMain = PageContent(
  txBody:
    "Ce site me sert de blog privé et de portfolio pour regrouper plus ou moins tous les projets sur lesquels je travaille, professionellement et dans mon temps libre."
)

var pres = "jemappellenoejai23ansetlesgensdisentquejesuiscreatifvoicimonsiteinternet"
proc renderMain(): VNode =
  buildHtml(tdiv(class = "myclass")):
    h1:
      text "futurebassmeow"
    h3:
      text "former musicien & sound designer - wannabe developer - sad"
    nav:
      for i, page in list.pairs:
        a(href = "#/"):
          text page
        if i < list.len - 1:
          text " ----- "

    p:
      text "je veux faire des trucs utiles quand je ne peux pas les faire et dès que je peux les faire je fais des trucs inutiles"

    h2:
      text "-----------------------------------------------"

    h4:
      text "16/07/26 vous vous demandez sûrement comment j'en suis arrivé là"
    for str in rdthoughts:
      p:
        text str

    h2:
      text "-----------------------------------------------"
    h4:
      text "16/07/26 pourquoi la scene underground se comportent tous comme des tocards"
    p:
      text "jvoulais faire un post sur xo et puis jai eu la flemme maisquil nique sa mere lui et sa claude fanfic . ca nous fait le philosophe pour défendre l'utilisation de robots dans l'art sayez gros va faire d drums un peu"

proc createDom(): VNode =
  case currentState
  of MAIN:
    renderMain()

setRenderer createDom

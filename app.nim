include karax/prelude

var list = @[kstring "INDEX", "PROJETS", "BLOG", "AUTRE"]

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
    uhhhhhhh et donc jai fait un site ........
  """,
  """
    Au collège, quand jai commencé a faire de la musique, je ne me suis jamais posé la question de **pourquoi** je le faisais. à l'époque, mon dumb ass brain était incapable de se fixer et grind un seul intérêt, genre une passion, un sport (??), une forme d'art, peu importe. Apres des années à essayer de comprendre ce que j'aimais, ce que je voulais faire dans la vie, et comment je voulais le faire, j'ai découvert la musique électronique plutôt par hasard, et j'ai commencé à apprendre assez instinctivement. Jusque lors je n'avais jamais été sérieusement intéressé par le sujet. Ma culture musicale se résumait à ncs et aux tops nrj12. Cette culture, je l'ai donc forgée avec le temps, en apprenant, en écoutant des nouvelles choses et surtout, en grandissant. la musique était devenu le seul centre d'intérêt que j'avais et qui avait comme don de ne pas me lasser, donc jai continué. Vers le lycée, jai simplement réalisé que j'étais arrivé trop loin pour m'arrêter, donc jai voulu m'orienter là dedans.
  """,
  """
    je passerai les détails ici, si vous lisez ça vous savez. Mon obsession après avoir eu mon bac a été de continuer d'apprendre. Le sound design, la production, le mix, etc.... jai effectivement appris ces choses là, décroché un diplôme, puis, en 2024, DATAMOSH THERAPY est né. 2 ans de projets hybrides ableton/flstudio/pro-tools et moi qui raconte des trucs que le moi du futur aurait sûrement très honte (c'est le cas). Javais atteint le seul objectif que j'avais en tête à ce moment. Cet album était la concrétisation de tout ce que javais imaginé depuis 2020, quand j'écrivais encore des tracklists avec des songs qui n'existent même pas dans les notes de mon ordi. Avec 4 ans de retard, le plan s'était ENFIN déroulé comme prévu. L'ep est sorti, jai eu des bon retours, la release party dans un bar perdu au fond du québec était sûrement la meilleure soirée de ma vie. Maintenant quoi ? je ne sais pas. 
  """,
  """
    une des choses qui m'a poussé à continuer cet album, entre 2022 et 2024 était la reconnaissance. J'allais enfin pouvoir montrer aux gens de quoi je suis capable, qu'est-ce qui me construit, et ce que je peux faire. Même si c'était 2 personnes, la reconnaissance de ces 2 personnes me suffisait. Le simple fait de me dire que jallais peut etre pouvoir etre dans l'esprit d es gens autrement qu'en étant physiquement devant eux était un moteur assez puissant pour me forcer à continuer. Anyway, pour une raison qui m'est encore inconnue (les gens diront que cest parce que l'album est bien -- je ne les crois pas), jai fini par atteindre bien plus de personnes que je ne l'imaginais. et ça m'a fait du bien. 
  """,
  """
    Donc quand on est un artiste, la tradition veut qu'on ne le soit pas seulement pour le temps d'un album, mais que, évidemment, on soit capable de réitérer ce processus plusieurs fois. Ce que ça voulait dire pour moi, maintenant que j'étais dans la cour des grands, c'est: il fallait faire mieux, plus rapidement, et arrêter de gamberge pour rien. C'est alors naturellement que j'ai décidé de me lancer dans la production d'un deuxième album, immédiatement apres le premier (FATAL FIELDS, l'intro du projet a été produite le jour de la sortie de DMT et enregistrée le lendemain). Cest précisément là que la descente aux enfers a commencé. Jai détesté CHAQUE SECONDE de ce projet, et ce pendant tout le temps de sa conception. C'était objectivement mieux que son prédécesseur, mais mon cerveau nétait pas capable de l'aimer. Pourquoi ? je ne le saurai jamais, mais ça m'a détruit. Une des différences entre les deux projets, c'est que le contexte de conception n'était pas le même. J'ai réalisé DMT pendant mes études, javais la tête dans le son en permanence, et quand je rentrais de cours il fallait grind pour pouvoir deliver le projet à temps. Cela a résulté en des sessions très courtes, souvent entre 23h et 3-4h du matin. Le fun de la production venait à courtes doses, donc naturellement, j'allais paradoxalement plus vite puisque j'avais moins le temps de travailler sur le projet, mais je pouvais gamberger dessus tout le long de la journée. Son successeur (que je nommerai RVS), quand à lui, a été réalisé dans un autre contexte: littéralement sans-emploi et chez le padre, donc toute la journée devant l'ordi à composer, enregistrer, mixer, etc etc etc. Ca aurait pu être un rêve, mais mon cerveau n'est pas capable de se réguler dans si peu de limitations. Donc au lieu de savoir quoi faire  et de le faire, je me perdais continuellement sur internet a la recherche d'inspiration, qui n'est jamais venu. En mai 2025, jai donc pris la décision de m'éloigner de la musique. J'avais besoin de voir, faire, vivre autre chose. et c'est là que j'ai découvert strudel.
  """,
  """
    Je vais pas expliquer ce que c'est, vous pouvez simplement aller voir par vous-même. Concrètement: on écrit du code qui génère d ela muisque. c'était une façon différente et totalement inédite de composer comparé à ce que je savais déjà, et je suis tombé in love <3 comme disent les jeunes. strudel 
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
      text "musicien - sound designer - wannabe developer - depressed"
    nav:
      for i, page in list.pairs:
        a(href = "#/"):
          text page
        if i < list.len - 1:
          text " --- "

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
      text "jvoulais faire un post sur xo et puis jai eu la flemme maisquil nique sa mere lui et sa love letter envers claude . Un jour je parlerai de 55pasquier aussi. ce n'est cependant pas le sujet de l'article"

proc createDom(): VNode =
  case currentState
  of MAIN:
    renderMain()

setRenderer createDom

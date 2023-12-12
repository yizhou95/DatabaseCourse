DROP DATABASE IF EXISTS Leaflet;

-- run order #1
CREATE DATABASE IF NOT EXISTS Leaflet;
USE Leaflet;

DROP TABLE IF EXISTS user_login;

CREATE TABLE user_login(
  user_id				          INT AUTO_INCREMENT NOT NULL,
  username			          VARCHAR(20)	NOT NULL,
  login_password		      VARCHAR(15)	NOT NULL,
  PRIMARY KEY (user_id)
);

INSERT INTO user_login(
  username,
  login_password)
VALUES	
  ('YiZhou', 'YiZhou'),
  ('ScottHartsell', 'ScottHartsell'),
  ('HankBennett', 'HankBennett'),
  ('MateoLopez', 'MateoLopez');

-- run order #2
CREATE DATABASE IF NOT EXISTS Leaflet;
USE Leaflet;

DROP TABLE IF EXISTS book_info;

CREATE TABLE book_info(
  book_id				          INT	AUTO_INCREMENT NOT NULL,
  book_cover              VARCHAR(255) NOT NULL, -- directory location of the image
  title				            VARCHAR(100) NOT NULL,
  author				          VARCHAR(100),
  pub_date				        DATE,
  publisher			          VARCHAR(100),
  isbn				            VARCHAR(15)	NOT NULL,
  summary 			          MEDIUMTEXT NOT NULL,
  PRIMARY KEY (book_id)
);

INSERT INTO book_info (
  book_cover, 
  title, 
  author, 
  pub_date, 
  publisher, 
  isbn, 
  summary) 
VALUES
  ('https://media.discordapp.net/attachments/1174578118892199976/1174578551018762280/ThinkAndGrowthRich.jpg?ex=65681a85&is=6555a585&hm=e3f296ee92da9f66df5d11d2b3af5184fe72bba4f29ba7fcda0b7daca4b21589&=&width=870&height=1168', 
  'Think and Grow Rich', 
  'Napoleon Hill', 
  '1937-02-15', 
  'The Ralston Society', 
  '978-1788441025', 
  "Think and Grow Rich has been called the “Granddaddy of All Motivational Literature.” It was the first book to boldly ask, “What makes a winner?” The man who asked and listened for the answer, Napoleon Hill, is now counted in the top ranks of the world's winners himself. The most famous of all teachers of success spent “a fortune and the better part of a lifetime of effort” to produce the “Law of Success” philosophy that forms the basis of his books and that is so powerfully summarized in this one."),
  ('https://media.discordapp.net/attachments/1174578118892199976/1174578512875761704/The7HabitsOfHighlyEffectivePeople.jpg?ex=65681a7c&is=6555a57c&hm=2bb8307b16316359c26f776a0e53ac57de66fa0d21a678c2ef589afd7935d0df&=&width=690&height=1034', 
  'The 7 Habits of Highly Effective People', 
  'Stephen Covey', 
  '1989-08-15', 
  'Simon & Schuster', 
  '978-1982137274', 
  "The 7 Habits have become famous and are integrated into everyday thinking by millions and millions of people. Why? Because they work!

With Sean Covey’s added takeaways on how the habits can be used in our modern age, the wisdom of the 7 Habits will be refreshed for a new generation of leaders.

They include:
Habit 1: Be Proactive
Habit 2: Begin with the End in Mind
Habit 3: Put First Things First
Habit 4: Think Win/Win
Habit 5: Seek First to Understand, Then to Be Understood
Habit 6: Synergize
Habit 7: Sharpen the Saw

This beloved classic presents a principle-centered approach for solving both personal and professional problems. With penetrating insights and practical anecdotes, Stephen R. Covey reveals a step-by-step pathway for living with fairness, integrity, honesty, and human dignity—principles that give us the security to adapt to change and the wisdom and power to take advantage of the opportunities that change creates.
"),
  ('https://media.discordapp.net/attachments/1174578118892199976/1174578426091421797/HarryPotterandTheSorcerersStone.jpg?ex=65681a67&is=6555a567&hm=95e1885623cb9bfa8178b359dc07d02d98a9a2d0b6000d4927672fba9716445f&=&width=624&height=936', 
  "Harry Potter and the Sorcerer's Stone", 
  'J.K. Rowling', 
  '1997-06-26', 
  'Scholastic Corporation', 
  '978-1338878929', 
  "Harry Potter has no idea how famous he is. That's because he's being raised by his miserable aunt and uncle who are terrified Harry will learn that he's really a wizard, just as his parents were. But everything changes when Harry is summoned to attend an infamous school for wizards, and he begins to discover some clues about his illustrious birthright. From the surprising way he is greeted by a lovable giant, to the unique curriculum and colorful faculty at his unusual school, Harry finds himself drawn deep inside a mystical world he never knew existed and closer to his own noble destiny."),
  ('https://media.discordapp.net/attachments/1174578118892199976/1174578352988889129/CrosstheLine.jpg?ex=65681a55&is=6555a555&hm=5d375384c7ce5149b5f7741c&=&width=818&height=1058', 
  'Cross The Line', 
  'James Patterson', 
  '2017-05-23', 
  'Grand Central Publishing', 
  '978-1455585311', 
  "Washington, DC, has never been more dangerous. After shots pierce the tranquil nighttime calm of Rock Creek Park, a man is dead: what looks at first like road rage might be something much more sinister. But Alex has only just begun asking questions when he's called across town to investigate a new murder, one that hits close to home: his former boss and the beloved mentor of Alex's wife, Bree.

Now there's a killer on the loose, a long list of possible suspects, a city in panic, and nobody in charge of the besieged police force. . . until Bree gets tapped for the job.

As Bree scrambles to find her footing and close two high-profile cases, new violence stuns the capital. What should be a time for her to rely on Alex for support and cooperation is instead a moment of crisis in their marriage as well as their city when their investigative instincts clash and their relationship reaches a breaking point.

And the fiendish mind behind all the violence has appointed himself judge, jury, and executioner, with a terrifying master plan he's only begun to put in motion. To beat him at his own game, Alex and Bree must take the law back into their own hands before he puts them both out of commission . . . permanently."),
  ('https://media.discordapp.net/attachments/1174578118892199976/1174578353261527071/demonslayer.jpg?ex=65681a56&is=6555a556&hm=38198e0b2eb5af51df23337e&=&width=778&height=1168', 
  'Demon Slayer: Kimetsu no Yaiba', 
  'Koyoharu Gotouge', 
  '2016-02-16', 
  'Viz Media, LLC', 
  '123-4567891234', 
  "Tanjiro sets out on the path of the Demon Slayer to save his sister and avenge his family!

In Taisho-era Japan, kindhearted Tanjiro Kamado makes a living selling charcoal. But his peaceful life is shattered when a demon slaughters his entire family. His little sister Nezuko is the only survivor, but she has been transformed into a demon herself! Tanjiro sets out on a dangerous journey to find a way to return his sister to normal and destroy the demon who ruined his life."),
  ('https://media.discordapp.net/attachments/1174578118892199976/1174578507326697482/PeterPanAndWendy.jpg?ex=65681a7a&is=6555a57a&hm=13476d9a40f4c390c274c700&=&width=818&height=1166', 
  "Peter Pan and Wendy", 
  "Barrie, J. M. (James Matthew)", 
  '1921-01-01', 
  "Hodder & Stoughton (UK) Charles Scribner's Sons (US)", 
  "340246294", 
  'Peter Pan and Wendy by J.M. Barrie is a classic tale of adventure and imagination. It follows the adventures of Peter Pan, a boy who can fly and never grows up, and Wendy Darling, a girl who joins him in the magical world of Neverland. In Neverland, they encounter fairies, pirates led by Captain Hook, mermaids, and a group of Lost Boys. The story explores themes of eternal youth, the power of imagination, and the bittersweet experience of growing up. Through thrilling escapades and whimsical characters, "Peter Pan and Wendy" invites readers to embrace the wonder of childhood and the importance of cherishing the fleeting moments of youth.'),
  ('https://media.discordapp.net/attachments/1174578118892199976/1174578513173565520/Theburningworld.jpg?ex=65681a7c&is=6555a57c&hm=cc410ce400a8798e350d801b&=&width=400&height=574', 
  "The Burning World", 
  "Budrys Algis", 
  "2020-04-26",
  "Positronic Publishing", 
  "9781515445012",
  "How far would one man go to protect mankind from tyranny? This thoughtful and suspenseful novel of the far future answers that question. Algis Budrys was the Hugo and Nebula award-nominated author of Rogue Moon and Michaelmas."),
  ('https://media.discordapp.net/attachments/1174578118892199976/1174578513400041542/TheCatcherInTheRye.jpg?ex=65681a7c&is=6555a57c&hm=f562aeec2105218e4b7c59d07377e37b4712950797f895119456b448f6da6b23&=&width=552&height=850', 
  "The Catcher in the Rye",
  "Jerome David Salinger",
  "2001-01-01",
  "Little,Brown",
  "9781439550052",
  "Story of Holden Caufield with his idiosyncrasies, penetrating insight, confusion, sensitivity and negativism. Holden, knowing he is to be expelled from school, decides to leave early. He spends three days in New York City and tells the story of what he did and suffered there."),
  ('https://media.discordapp.net/attachments/1174578118892199976/1174578513689456700/TheWonderfulWizardofOz.jpg?ex=65681a7c&is=6555a57c&hm=d4e567419a756108f8b3ce49f7efb0f28310c5f0431c4bb2cb91b7618d68025f&=&width=522&height=780', 
  "The Wonderful Wizard of Oz",
  "Baum, L. Frank (Lyman Frank)",
  "1900-01-01",
  "Chicago; New York: G.M. Hill Co.",
  "9781593082215",
  "Dorothy is a young girl who lives in a one-room house in Kansas with the care-worn Uncle Henry and Aunt Em; the joy of her life is her dog, Toto. A sudden cyclone strikes, and, by the time Dorothy catches Toto, she is unable to reach the storm cellar. They are still in the house when the cyclone carries it away for a long journey. When at last the house lands, Dorothy finds that she is in a beautiful land inhabited by very short, strangely dressed people. The Witch of the North informs her that she is in the land of the Munchkins, who are grateful to her for having killed the Wicked Witch of the East (the house having landed on the witch), thus freeing them. The Witch of the North gives Dorothy the silver shoes of the dead witch and advises her to go to the City of Emeralds to see the Great Wizard Oz, who might help her return to Kansas. The witch sends Dorothy off along the yellow brick road with a magical kiss to protect her from harm…"),
  ('https://media.discordapp.net/attachments/1174578118892199976/1174578511445512233/PrideAndPrejudice.jpg?ex=65681a7b&is=6555a57b&hm=2f681d456cf80610a28b1c29412ee3bd13965396b7640f8b1c65b72c3c5916b0&=&width=518&height=776', 
  "Pride and Prejudice",
  "Austen Jane",
  "1894-01-01",
  "London:George Allen",
  "9781508964865",
  "The Bennet family consists of Mr. and Mrs. Bennet and their five daughters: Jane, Elizabeth, Mary, Catherine (Kitty), and Lydia. With no male heir, their family estate is entailed to a distant male relative, Mr. Collins. This predicament puts pressure on the Bennet daughters to marry well to secure their financial future..."),
  ('https://media.discordapp.net/attachments/1174578118892199976/1174578512561180693/The_shining.jpg?ex=65681a7c&is=6555a57c&hm=e8cca783d879867e9228aa95&=&width=444&height=666', 
  "The Shining", 
  "Stephen King", 
  "1977-01-28", 
  "Doubleday", 
  "9780345806789", 
  "This tale of a troubled man hired to care for a remote mountain resort over the winter, his loyal wife, and their uniquely gifted son slowly but steadily unfolds as secrets from the Overlook Hotel’s past are revealed, and the hotel itself attempts to claim the very souls of the Torrance family.
The Shining stands as a cultural icon of modern horror, a searing study of a family torn apart, and a nightmarish glimpse into the dark recesses of human weakness and dementia."),
  ("https://media.discordapp.net/attachments/1174578118892199976/1174578353873883146/goneGirl.jpg?ex=65681a56&is=6555a556&hm=a9ab158e78f6d82d75c10062&=&width=760&height=1168",
  "Gone Girl", 
  "Gillian Flynn", 
  "2012-05-24", 
  "Crown Publishing Group", 
  "9780307588364", 
  "Gone Girl by Gillian Flynn centers its story about Nick and Amy Dunne’s strained marriage relationship. Nick used to work as a journalist, but loses his job. With his broke financial status, Nick decides to relocate from New York City to his smaller home town, North Carthage.
In an attempt of recovering from his financial deprivations, Nick opens a bar using the money from his wife. Nick runs the bar along with his twin sister Margo, providing a decent living for his family. But, as they days go by, his marriage with Amy is falling apart slowly. Amy resents her new life."),
  ("https://media.discordapp.net/attachments/1174578118892199976/1174578506898886726/menAreMyHeroes.jpg?ex=65681a7a&is=6555a57a&hm=02db29764d14048ad82e59d7&=&width=778&height=1168",
  "My Men are My Heroes: The Brad Kasal Story", 
  "Nathaniel R. Helms", 
  "2007-01-01", 
  "Naval Institute Press", 
  "9780696232367", 
  "My Men Are My Heroes introduces its readers to a living standard of Marine Corps esprit de corps and military decorum. Sergeant Major Bradley Kasal, the pride of Iowa, is a small town boy who wanted to be a United States Marine even before a poster perfect Marine recruiter marched into his high school gym and offered him a challenge Kasal couldn’t resist. Two decades later Kasal stood stiffly at attention, one leg literally shot in half, while the Navy Cross was pinned to his chest. Kasal is currently the Sergeant Major of the Infantry School at Camp Pendleton, CA until he retires in May, 2012."),
  ("https://media.discordapp.net/attachments/1174578118892199976/1174578506538168360/loneSurvivor.jpg?ex=65681a7a&is=6555a57a&hm=2b9f7ccaaf6edfb36e895821&=&width=718&height=1166",
  "Lone Survivor", 
  "Marcus Luttrell",
  "2007-06-12", 
  "Little, Brown and Company", 
  "9780316067591", 
  "Lone Survivor is the firsthand account of Marcus Luttrell, a Navy SEAL, who served in the Middle East. In an attempt to kill a notorious al Qaeda leader, Luttrell and his team are ambushed leaving him as the only survivor."),
  ("https://media.discordapp.net/attachments/1174578118892199976/1174578353529954377/drSleep.jpg?ex=65681a56&is=6555a556&hm=7306a762b4d3999b32ce225a&=&width=512&height=778",
  "Dr. Sleep", 
  "Stephen King", 
  "2013-09-24", 
  "Schruber", 
  "9781476727653", 
  "Struggling with alcoholism, Dan Torrance remains traumatized by the sinister events that occurred at the Overlook Hotel when he was a child. His hope for a peaceful existence soon becomes shattered when he meets Abra, a teen who shares his extrasensory gift of the 'shine.' Together, they form an unlikely alliance to battle the True Knot, a cult whose members try to feed off the shine of innocents to become immortal."),
  ("https://media.discordapp.net/attachments/1174578118892199976/1174578426380812318/HPChamberOfSecrets.jpg?ex=65681a67&is=6555a567&hm=afde4dde945485cdd8c13f20a9988e0e7633531417b8e84374f46fc76b5ad6f7&=&width=804&height=1074",
  "Harry Potter and the Chamber of Secrets", 
  'J.K. Rowling', 
  '1997-06-26', 
  'Scholastic Corporation', 
  '978-1338878929', 
  "The Dursleys were so mean that hideous that summer that all Harry Potter wanted was to get back to the Hogwarts School for Witchcraft and Wizardry. But just as he's packing his bags, Harry receives a warning from a strange, impish creature named Dobby who says that if Harry Potter returns to Hogwarts, disaster will strike.

    And strike it does. For in Harry's second year at Hogwarts, fresh torments and horrors arise, including an outrageously stuck-up new professor, Gilderoy Lockheart, a spirit named Moaning Myrtle who haunts the girls' bathroom, and the unwanted attentions of Ron Weasley's younger sister, Ginny.

    But each of these seem minor annoyances when the real trouble begins, and someone--or something--starts turning Hogwarts students to stone. Could it be Draco Malfoy, a more poisonous rival than ever? Could it possibly be Hagrid, whose mysterious past is finally told? Or could it be the one everyone at Hogwarts most suspects...Harry Potter himself?"),
  ("https://media.discordapp.net/attachments/1174578118892199976/1174578428180181052/HPPrisoner.jpg?ex=65681a67&is=6555a567&hm=974ed59edf71b81fccf22d88&=&width=764&height=1158",
  "Harry Potter and the Prisoner of Azkaban", 
  'J.K. Rowling', 
  '1999-01-01', 
  'Scholastic Corporation',
  '978-1338878929', 
  " The third book in the Harry Potter series, illustrated in brilliant full color by MinaLima and featuring eight exclusive interactive elements, including the Marauder’s Map and more!

    Return to Hogwarts in this stunning edition of Harry Potter and the Prisoner of Azkaban. J.K. Rowling’s complete and unabridged text is accompanied by full-color illustrations on nearly every page and eight paper-engineered interactive elements: Readers will explore the Knight Bus, reveal the Grim in a teacup, spin the Time-Turner, and more.

    Designed and illustrated by MinaLima ― the award-winning studio behind the graphic style of the Harry Potter films ― this keepsake edition is the perfect gift for Harry Potter fans of all ages, a beautiful addition to any collector’s bookshelf, and an enchanting way to share this beloved series with a new generation of readers."),
  ("https://media.discordapp.net/attachments/1174578118892199976/1174578427135787008/HPGlobalFire.jpg?ex=65681a67&is=6555a567&hm=712f5f06eefd73689769fb01&=&width=922&height=1168",
  "Harry Potter and the Goblet of Fire", 
  'J.K. Rowling', 
  '2000-01-01', 
  'Scholastic Corporation', 
  '978-1338878929', 
  "‘There will be three tasks, spaced throughout the school year, and they will test the champions in many different ways ... their magical prowess - their daring - their powers of deduction - and, of course, their ability to cope with danger.'

    The Triwizard Tournament is to be held at Hogwarts. Only wizards who are over seventeen are allowed to enter - but that doesn't stop Harry dreaming that he will win the competition. Then at Hallowe'en, when the Goblet of Fire makes its selection, Harry is amazed to find his name is one of those that the magical cup picks out. He will face death-defying tasks, dragons and Dark wizards, but with the help of his best friends, Ron and Hermione, he might just make it through - alive!

    Having become classics of our time, the Harry Potter stories never fail to bring comfort and escapism. With their message of hope, belonging and the enduring power of truth and love, the story of the Boy Who Lived continues to delight generations of new listeners."),
  ("https://media.discordapp.net/attachments/1174578118892199976/1174578427802681445/HPOrderPhoenix.jpg?ex=65681a67&is=6555a567&hm=782de76e9bf54ee08a363450&=&width=580&height=820",
  "Harry Potter and the Order of the Phoenix", 
  'J.K. Rowling', '2002-01-01',
  'Scholastic Corporation',
  '978-1338878929',
  "‘You are sharing the Dark Lord's thoughts and emotions. The Headmaster thinks it inadvisable for this to continue. He wishes me to teach you how to close your mind to the Dark Lord.'

    Dark times have come to Hogwarts. After the Dementors' attack on his cousin Dudley, Harry Potter knows that Voldemort will stop at nothing to find him. There are many who deny the Dark Lord's return, but Harry is not alone: a secret order gathers at Grimmauld Place to fight against the Dark forces. Harry must allow Professor Snape to teach him how to protect himself from Voldemort's savage assaults on his mind. But they are growing stronger by the day and Harry is running out of time...

    Having become classics of our time, the Harry Potter stories never fail to bring comfort and escapism. With their message of hope, belonging and the enduring power of truth and love, the story of the Boy Who Lived continues to delight generations of new listeners."),
  ("https://media.discordapp.net/attachments/1174578118892199976/1174578427458764921/HPHalfBloodPrince.jpg?ex=65681a67&is=6555a567&hm=20e0fa7be1dbadbbf34bf4b4aa38504a4ab8121386a178e543712b8ffdc4044a&=&width=732&height=1104",
  "Harry Potter and the Half Blood Prince",
  'J.K. Rowling',
  '2004-01-01',
  'Scholastic Corporation',
  '978-1338878929', 
  "There it was, hanging in the sky above the school: the blazing green skull with a serpent tongue, the mark Death Eaters left behind whenever they had entered a building...wherever they had murdered...

    When Dumbledore arrives at Privet Drive one summer night to collect Harry Potter, his wand hand is blackened and shrivelled, but he does not reveal why. Secrets and suspicion are spreading through the wizarding world, and Hogwarts itself is not safe. Harry is convinced that Malfoy bears the Dark Mark: there is a Death Eater amongst them. Harry will need powerful magic and true friends as he explores Voldemort's darkest secrets, and Dumbledore prepares him to face his destiny...

    Having become classics of our time, the Harry Potter stories never fail to bring comfort and escapism. With their message of hope, belonging and the enduring power of truth and love, the story of the Boy Who Lived continues to delight generations of new listeners."),
  ("https://media.discordapp.net/attachments/1174578118892199976/1174578426804453416/HPDealthyHallows.jpg?ex=65681a67&is=6555a567&hm=b52acd6e25760d0ba389048eb7150951bdbde61a4d2b35c7b8ff9767bf409976&=&width=810&height=1072",
  "Harry Potter and the Deathly Hallows",
  'J.K. Rowling',
  '2007-06-26',
  'Scholastic Corporation',
  '978-1338878929',
  "‘Give me Harry Potter,' said Voldemort's voice, 'and none shall be harmed. Give me Harry Potter, and I shall leave the school untouched. Give me Harry Potter, and you will be rewarded.'

    As he climbs into the sidecar of Hagrid's motorbike and takes to the skies, leaving Privet Drive for the last time, Harry Potter knows that Lord Voldemort and the Death Eaters are not far behind. The protective charm that has kept Harry safe until now is broken, but he cannot keep hiding. The Dark Lord is breathing fear into everything Harry loves and to stop him Harry will have to find and destroy the remaining Horcruxes. The final battle must begin - Harry must stand and face his enemy...

    Having become classics of our time, the Harry Potter stories never fail to bring comfort and escapism. With their message of hope, belonging and the enduring power of truth and love, the story of the Boy Who Lived continues to delight generations of new listeners."),
  ('https://media.discordapp.net/attachments/1174578118892199976/1174578352741433344/crossMustDie.jpg?ex=65681a55&is=6555a555&hm=701491e1b03a7e5c1b5f56ef&=&width=1000&height=1000',
  'Alex Cross Must Die: A Thriller',
  'James Patterson',
  '2017-05-23',
  'Grand Central Publishing',
  '978-1455585311',
  "“One of the greatest fictional detectives of all time” (Douglas Preston & Lincoln Child) is in the sights of the Dead Hours Killer, a serial murderer on a ruthless mission.

    An airport killer targeting pilots expands his scope. Alex Cross Must Die.

    “Drop whatever you’re doing, Detective Cross, and head to Reagan Airport,” DC Metro Police dispatch says. “A jet just crashed and exploded on the runway. The chief and the FBI want you and John Sampson there pronto.”

    Cross and Sampson race to the crash site. The plane didn’t fail—it was shot down by a stolen Vietnam War–era machine gun.

    The list of experts who can operate the weapon is short. And time before another lethal strike runs even shorter. Especially for Detective Cross.

    Alex Cross Must Die."),
  ('https://media.discordapp.net/attachments/1174578118892199976/1174578352502345748/crossDown.jpg?ex=65681a55&is=6555a555&hm=311f14a462c49534f8a5f391&=&width=1000&height=1000',
  'Cross Down: An Alex Cross and John Sampson Thriller',
  'James Patterson',
  '2017-05-23',
  'Grand Central Publishing',
  '978-1455585311',
  "#1 NEW YORK TIMES BESTSELLER  Alex Cross is gravely injured. Only his partner and friend John Sampson can keep him safe . . . and get justice.

    For the first time, John Sampson is on his own. 

    The brilliant crime-solving duo of Washington, DC’s, Metro PD and the FBI has a proven MO: Detective Alex Cross makes his own rules. Detective John Sampson enforces them.

    When military-style attacks erupt, brutally sidelining Cross, Sampson is sent reeling. The patterns are too random—Sampson’s friend, his partner, his brother—have told him. Don’t trust anyone. 

    As a shadow force advances on the nation’s capital, Sampson alone must protect the Cross family, his own young daughter, and every American, including the president."),
  ('https://media.discordapp.net/attachments/1174578118892199976/1174578551253639228/tripleCross.jpg?ex=65681a85&is=6555a585&hm=843a35ec60920ab26d5673b1&=&width=1000&height=1000',
  'Triple Cross: The Greatest Alex Cross Thriller',
  'James Patterson',
  '2017-05-23',
  'Grand Central Publishing',
  '978-1455585311',
  "Detective Alex Cross hunts down a serial killer who targets entire families—and who will next be coming for the Crosses. 

    A precise killer, he always moves under the cover of darkness, flawlessly triggering no alarms, leaving no physical evidence.  

    Cross and Sampson aren’t the only ones investigating.  

    Also in on this most intriguing case is the world’s bestselling true-crime author, who sees patterns everyone else misses.

    The writer, Thomas Tull, calls the Family Man murders the perfect crime story. He believes the killer may never be caught.  

    Cross knows there is no perfect crime. And he’s going to hunt down the Family Man no matter what it takes.  

    Until the Family Man decides to flip the narrative and bring down Cross and his family."),
  ('https://cdn.discordapp.com/attachments/1174578118892199976/1174578352246497390/crissCross.jpg?ex=65681a55&is=6555a555&hm=2542049e02a66bdd098d3423&',
    'Criss Cross',
    'James Patterson',
    '2017-05-23',
    'Grand Central Publishing',
    '978-1455585311',
    "A killer with all the skills of a master detective has made Alex Cross the subject of his deranged 'investigation'.

    In a Virginia penitentiary, Alex Cross and his partner, John Sampson, witness the execution of a killer they helped convict. Hours later, they are called to the scene of a copycat crime. A note signed 'M' rests on the corpse. 'You messed up big time, Dr. Cross.''

    Was an innocent man just put to death? Alex soon realizes he may have much to answer for, as 'M' lures the detective out of the capital to the sites of multiple homicides, all marked with distressingly familiar details - details that conjure up decades-old cases. Details that conjure up Cross family secrets. Details that make clear that M is after a prize so dear that - were the killer to attain it - Alex's heart would no longer have reason to beat.");


CREATE DATABASE IF NOT EXISTS Leaflet;
USE Leaflet;

DROP TABLE IF EXISTS book_content;

-- content will have a html string with the page code
CREATE TABLE book_content(
  book_id				INT	NOT NULL,
  page_num      INT NOT NULL,
  content       TEXT,
  PRIMARY KEY (book_id, page_num), -- touple as primary key
  FOREIGN KEY (book_id) REFERENCES book_info(book_id)
);

-- fill this when the front end is ready
INSERT INTO book_content (
  book_id, 
  page_num, 
  content) 
VALUES
  (1, 1, "<h1 text-align='center'>CHAPTER 1</h1>

<h1 text-align='center'>INTRODUCTION</h1>

<h2 text-align='center'>THE MAN WHO 'THOUGHT'<br>HIS WAY INTO PARTNERSHIP<br>WITH THOMAS A. EDISON</h2>

<p>
<span class=\"' ESCAPE '\tab\"' ESCAPE '\></span>TRULY, 'thoughts are things,' and powerful things at that, when they are
mixed with definiteness of purpose, persistence, and a BURNING DESIRE for
their translation into riches, or other material objects.<br>
<span class=\"' ESCAPE '\tab\"' ESCAPE '\></span>A little more than thirty years ago, Edwin C. Barnes discovered how true
it is that men really do THINK AND GROW RICH.  His discovery did not come
about in one sitting.  It came little by little, beginning with a BURNING DESIRE
to become a business associate of the great Edison.<br>
<span class=\"' ESCAPE '\tab\"' ESCAPE '\></span>One of the chief characteristics of Barnes' Desire was that it was definite.
He wanted to work with Edison, not for him.  Observe, carefully, the description
of how he went about translating his DESIRE into reality, and you will have a
better understanding of the thirteen principles which lead to riches.<br>
<span class=\"' ESCAPE '\tab\"' ESCAPE '\></span>When this DESIRE, or impulse of thought, first flashed into his mind he
was in no position to act on it.  Two difficulties stood in his way.  He did not
know Mr. Edison, and he did not have neough money to pay his railroad fare to
Orange, New Jersey.<br>
<span class=\"' ESCAPE '\tab\"' ESCAPE '\></span>These difficulties were sufficient to have discouraged the majority of men
from making any attempt to carry out the desire.  But his was no ordinary desire!
He was so determined to find a way to carry out his desire that he finally
decided to travel by 'blind baggage,' rather than be defeated.  (To the uninitiated,
this means that he went to East Orange on a freight train).<br>
<span class=\"' ESCAPE '\tab\"' ESCAPE '\></span>He presented himself at Mr. Edison's laboratory, and announced he had 
come to go into business with the inventor.  In speaking of the first meeting
between Barnes and Edison, years later, Mr. Edison ssaid, 'He stood there before
me, looking like an ordinary tramp, but there was something in the expression of his
face which conveyed the impression that he was determined to get what he had come after.'
I had learned, from years of experience with men, that when a man really
DESIRES a thing so deeply that he is willing to stake his entire future on a single
turn of the wheel in order to get it, he is sure to win.  I gave him the opportunity
</p>

<h3>1</h3>"),
  (1, 2, "<p>
he asked for, because I saw he had made up his mdin to stand by until he succeeded.
Subsequent events proved that no mistake was made.'<br>
<span class=\"' ESCAPE '\tab\"' ESCAPE '\></span>Just what young Barnes said to Mr. Edison on that occasion was far less
important than that which he thought.  Edison, himself, said so!  It could not have
been the young man's appearance which got him his start in the Edison office, for 
that was definitely against him.  It was what he THOUGHT that counted.<br>
<span class=\"' ESCAPE '\tab\"' ESCAPE '\></span>If the significance of this statement could be conveyed to every person
who reads it, there would be no need for the remainder of this book.<br>
<span class=\"' ESCAPE '\tab\"' ESCAPE '\></span>Barnes did not get his partnership with Edison on his first interview.  He 
did get a chance to work in the Edison offices, at a very nominal wage, doing
work that unimportant to Edison, but most important to Barnes, because it
gave him an opportunity to display his 'merchandise' where his intended
'partner' could see it.<br>
<span class=\"' ESCAPE '\tab\"' ESCAPE '\></span>Months went by.  Apparently nothing happened ot bring the coveted goal
which Barnes had set up in his mind as his DEFINITE MAJOR PURPOSE.  But 
something important was happening in Barnes' mind.  He was constantly
intensifying his DESIRE to become the business associate of Edison.<br>
<span class=\"' ESCAPE '\tab\"' ESCAPE '\></span>Psychologists have correctly said that 'when one is truly ready for a thing,
it puts in its appearance.'<br>
<span class=\"' ESCAPE '\tab\"' ESCAPE '\></span>Barnes was ready for a business association with Edison, moreover, he 
was DETERMINED TO REMAIN READY UNTIL HE GOT THAT WHICH HE WAS SEEKING.<br>
<span class=\"' ESCAPE '\tab\"' ESCAPE '\></span>He did not say ot himself, 'Ah well, what's the use?  I gues I'll change my 
mind and try for a salesman's job.'  But, he did say, 'I came here to go into 
business with Edison, and I'll accomplish this end if it takes the remainder of my
life.'  He meant it!  What a different story men would have to tell if only they
would adopt a DEFINITE PURPOSE, and stand by that purpose until it had time
to become an all-consuming obsession!<br>
<span class=\"' ESCAPE '\tab\"' ESCAPE '\></span>Maybe young Barnes did not know i tat the time, but his bulldog
determination, his presistence in standing back of a single DESIRE, was destined
to mow down all opposition, and bring him the opportunity he was seeking.<br>
<span class=\"' ESCAPE '\tab\"' ESCAPE '\></span>When the opportunity came, it appeared in a different form, and from a 
different direction than Barnes had expected.  That is one of the tricks of
opportunity.  It has a sly habit of slipping in by the back door, and often it comes 
disguised in the form of misfortune, or temporary defeat.  Perhaps this is why so
many fail to recognize opportunity.
</p>

<h3>2</h3>"),
  (1, 3, "<h1>Put Title Here</h1>

<h2>Chapter 1</h2>

<p>Fractional-reserve banking is the system of banking in all countries worldwide, under which banks that take deposits from the public keep only part of their deposit liabilities in liquid assets as a reserve, typically lending the remainder to borrowers. Bank reserves are held as cash in the bank or as balances in the bank's account at the central bank. Fractional-reserve banking differs from the hypothetical alternative model, full-reserve banking, in which banks would keep all depositor funds on hand as reserves.<br>

    The country's central bank may determine a minimum amount that banks must hold in reserves, called the 'reserve requirement' or 'reserve ratio'. Most commercial banks hold more than this minimum amount as excess reserves. Some countries, e.g. the core Anglosphere countries of the United States, the United Kingdom, Canada, Australia, and New Zealand, and the three Scandinavian countries do not impose reserve requirements at all.<br>

    Bank deposits are usually of a relatively short-term duration, and may be 'at call', while loans made by banks tend to be longer-term, resulting in a risk that customers may at any time collectively wish to withdraw cash out of their accounts in excess of the bank reserves. The reserves only provide liquidity to cover withdrawals within the normal pattern. Banks and the central bank expect that in normal circumstances only a proportion of deposits will be withdrawn at the same time, and that reserves will be sufficient to meet the demand for cash. However, banks may find themselves in a shortfall situation when depositors wish to withdraw more funds than the reserves held by the bank. In that event, the bank experiencing the liquidity shortfall may borrow short-term funds in the interbank lending market from banks with a surplus. In exceptional situations, such as during an unexpected bank run, the central bank may provide funds to cover the short-term shortfall as lender of last resort.
</p>

<h3>3</h3>"),
  (1, 4, "<h1>Put Title Here</h1>

<h2>Chapter 1</h2>

<p>Fractional-reserve banking is the system of banking in all countries worldwide, under which banks that take deposits from the public keep only part of their deposit liabilities in liquid assets as a reserve, typically lending the remainder to borrowers. Bank reserves are held as cash in the bank or as balances in the bank's account at the central bank. Fractional-reserve banking differs from the hypothetical alternative model, full-reserve banking, in which banks would keep all depositor funds on hand as reserves.<br>

    The country's central bank may determine a minimum amount that banks must hold in reserves, called the 'reserve requirement' or 'reserve ratio'. Most commercial banks hold more than this minimum amount as excess reserves. Some countries, e.g. the core Anglosphere countries of the United States, the United Kingdom, Canada, Australia, and New Zealand, and the three Scandinavian countries do not impose reserve requirements at all.<br>

    Bank deposits are usually of a relatively short-term duration, and may be 'at call', while loans made by banks tend to be longer-term, resulting in a risk that customers may at any time collectively wish to withdraw cash out of their accounts in excess of the bank reserves. The reserves only provide liquidity to cover withdrawals within the normal pattern. Banks and the central bank expect that in normal circumstances only a proportion of deposits will be withdrawn at the same time, and that reserves will be sufficient to meet the demand for cash. However, banks may find themselves in a shortfall situation when depositors wish to withdraw more funds than the reserves held by the bank. In that event, the bank experiencing the liquidity shortfall may borrow short-term funds in the interbank lending market from banks with a surplus. In exceptional situations, such as during an unexpected bank run, the central bank may provide funds to cover the short-term shortfall as lender of last resort.
</p>

<h3>4</h3>"),
  (1, 5, "<h1>Put Title Here</h1>

<h2>Chapter 1</h2>

<p>Fractional-reserve banking is the system of banking in all countries worldwide, under which banks that take deposits from the public keep only part of their deposit liabilities in liquid assets as a reserve, typically lending the remainder to borrowers. Bank reserves are held as cash in the bank or as balances in the bank's account at the central bank. Fractional-reserve banking differs from the hypothetical alternative model, full-reserve banking, in which banks would keep all depositor funds on hand as reserves.<br>

    The country's central bank may determine a minimum amount that banks must hold in reserves, called the 'reserve requirement' or 'reserve ratio'. Most commercial banks hold more than this minimum amount as excess reserves. Some countries, e.g. the core Anglosphere countries of the United States, the United Kingdom, Canada, Australia, and New Zealand, and the three Scandinavian countries do not impose reserve requirements at all.<br>

    Bank deposits are usually of a relatively short-term duration, and may be 'at call', while loans made by banks tend to be longer-term, resulting in a risk that customers may at any time collectively wish to withdraw cash out of their accounts in excess of the bank reserves. The reserves only provide liquidity to cover withdrawals within the normal pattern. Banks and the central bank expect that in normal circumstances only a proportion of deposits will be withdrawn at the same time, and that reserves will be sufficient to meet the demand for cash. However, banks may find themselves in a shortfall situation when depositors wish to withdraw more funds than the reserves held by the bank. In that event, the bank experiencing the liquidity shortfall may borrow short-term funds in the interbank lending market from banks with a surplus. In exceptional situations, such as during an unexpected bank run, the central bank may provide funds to cover the short-term shortfall as lender of last resort.
</p>

<h3>5</h3>"),
  (1, 6, "<h1>Put Title Here</h1>

<h2>Chapter 1</h2>

<p>Fractional-reserve banking is the system of banking in all countries worldwide, under which banks that take deposits from the public keep only part of their deposit liabilities in liquid assets as a reserve, typically lending the remainder to borrowers. Bank reserves are held as cash in the bank or as balances in the bank's account at the central bank. Fractional-reserve banking differs from the hypothetical alternative model, full-reserve banking, in which banks would keep all depositor funds on hand as reserves.<br>

    The country's central bank may determine a minimum amount that banks must hold in reserves, called the 'reserve requirement' or 'reserve ratio'. Most commercial banks hold more than this minimum amount as excess reserves. Some countries, e.g. the core Anglosphere countries of the United States, the United Kingdom, Canada, Australia, and New Zealand, and the three Scandinavian countries do not impose reserve requirements at all.<br>

    Bank deposits are usually of a relatively short-term duration, and may be 'at call', while loans made by banks tend to be longer-term, resulting in a risk that customers may at any time collectively wish to withdraw cash out of their accounts in excess of the bank reserves. The reserves only provide liquidity to cover withdrawals within the normal pattern. Banks and the central bank expect that in normal circumstances only a proportion of deposits will be withdrawn at the same time, and that reserves will be sufficient to meet the demand for cash. However, banks may find themselves in a shortfall situation when depositors wish to withdraw more funds than the reserves held by the bank. In that event, the bank experiencing the liquidity shortfall may borrow short-term funds in the interbank lending market from banks with a surplus. In exceptional situations, such as during an unexpected bank run, the central bank may provide funds to cover the short-term shortfall as lender of last resort.
</p>

<h3>6</h3>"),
  (3, 1, "<h1>Chapter 1: The Boy Who Lived</h1>

<p>Mr. and Mrs. Dursley, of number four, Privet Drive, were proud to say that they were perfectly normal, thank you very much. They were the last people you’d expect to be in- volved in anything strange or mysterious, because they just didn’t hold with such nonsense.<br>
    Mr. Dursley was the director of a firm called Grunnings, which made drills. He was a big, beefy man with hardly any neck, al- though he did have a very large mustache. Mrs. Dursley was thin and blonde and had nearly twice the usual amount of neck, which came in very useful as she spent so much of her time craning over garden fences, spying on the neighbors. The Dursleys had a small son called Dudley and in their opinion there was no finer boy anywhere.<br>
    The Dursleys had everything they wanted, but they also had a secret, and their greatest fear was that somebody would discover it.</p>"),
  (3, 2, "<p>
    They didn’t think they could bear it if anyone found out about the Potters. Mrs. Potter was Mrs. Dursley’s sister, but they hadn’t met for several years; in fact, Mrs. Dursley pretended she didn’t have a sister, because her sister and her good-for-nothing husband were as unDursleyish as it was possible to be. The Dursleys shuddered to think what the neighbors would say if the Potters arrived in the street. The Dursleys knew that the Potters had a small son, too, but they had never even seen him. This boy was another good reason for keeping the Potters away; they didn’t want Dudley mixing with a child like that.<br>
    When Mr. and Mrs. Dursley woke up on the dull, gray Tuesday our story starts, there was nothing about the cloudy sky outside to suggest that strange and mysterious things would soon be happen- ing all over the country. Mr. Dursley hummed as he picked out his most boring tie for work, and Mrs. Dursley gossiped away happily as she wrestled a screaming Dudley into his high chair.<br>
    None of them noticed a large, tawny owl flutter past the window.<br>
    At half past eight, Mr. Dursley picked up his briefcase, pecked Mrs. Dursley on the cheek, and tried to kiss Dudley good-bye but missed, because Dudley was now having a tantrum and throwing his cereal at the walls. “Little tyke,” chortled Mr. Dursley as he left the house. He got into his car and backed out of number four’s drive.<br>
    It was on the corner of the street that he noticed the first sign of something peculiar — a cat reading a map. For a second, Mr. Dursley didn’t realize what he had seen — then he jerked his head around to look again. There was a tabby cat standing on the corner</p>"),
  (3, 3, "<p>of Privet Drive, but there wasn’t a map in sight. What could he have been thinking of? It must have been a trick of the light. Mr. Dursley blinked and stared at the cat. It stared back. As Mr. Durs- ley drove around the corner and up the road, he watched the cat in his mirror. It was now reading the sign that said Privet Drive — no, looking at the sign; cats couldn’t read maps or signs. Mr. Dursley gave himself a little shake and put the cat out of his mind. As he drove toward town he thought of nothing except a large order of drills he was hoping to get that day.<br>
    But on the edge of town, drills were driven out of his mind by something else. As he sat in the usual morning traffic jam, he couldn’t help noticing that there seemed to be a lot of strangely dressed people about. People in cloaks. Mr. Dursley couldn’t bear people who dressed in funny clothes — the getups you saw on young people! He supposed this was some stupid new fashion. He drummed his fingers on the steering wheel and his eyes fell on a huddle of these weirdos standing quite close by. They were whis- pering excitedly together. Mr. Dursley was enraged to see that a couple of them weren’t young at all; why, that man had to be older than he was, and wearing an emerald-green cloak! The nerve of him! But then it struck Mr. Dursley that this was probably some silly stunt — these people were obviously collecting for something . . . yes, that would be it. The traffic moved on and a few minutes later, Mr. Dursley arrived in the Grunnings parking lot, his mind back on drills.<br>
    Mr. Dursley always sat with his back to the window in his office on the ninth floor. If he hadn’t, he might have found it harder to concentrate on drills that morning. He didn’t see the owls swooping</p>"),
  (3, 4, "<p>past in broad daylight, though people down in the street did; they pointed and gazed open-mouthed as owl after owl sped overhead. Most of them had never seen an owl even at nighttime. Mr. Durs- ley, however, had a perfectly normal, owl-free morning. He yelled at five different people. He made several important telephone calls and shouted a bit more. He was in a very good mood until lunch- time, when he thought he’d stretch his legs and walk across the road to buy himself a bun from the bakery.<br>
    He’d forgotten all about the people in cloaks until he passed a group of them next to the baker’s. He eyed them angrily as he passed. He didn’t know why, but they made him uneasy. This bunch were whispering excitedly, too, and he couldn’t see a single collecting tin. It was on his way back past them, clutching a large doughnut in a bag, that he caught a few words of what they were saying.<br>
    “The Potters, that’s right, that’s what I heard —”<br>
    “— yes, their son, Harry —”<br>
    Mr. Dursley stopped dead. Fear flooded him. He looked back at the whisperers as if he wanted to say something to them, but thought better of it.<br>
    He dashed back across the road, hurried up to his office, snapped at his secretary not to disturb him, seized his telephone, and had almost finished dialing his home number when he changed his mind. He put the receiver back down and stroked his mustache, thinking . . . no, he was being stupid. Potter wasn’t such an un- usual name. He was sure there were lots of people called Potter who had a son called Harry. Come to think of it, he wasn’t even sure his nephew was called Harry. He’d never even seen the boy. It might</p>"),
  (3, 5, "<p>have been Harvey. Or Harold. There was no point in worrying Mrs. Dursley; she always got so upset at any mention of her sister. He didn’t blame her — if he’d had a sister like that . . . but all the same, those people in cloaks . . .<br>
    He found it a lot harder to concentrate on drills that afternoon and when he left the building at five o’clock, he was still so worried that he walked straight into someone just outside the door.<br>
    “Sorry,” he grunted, as the tiny old man stumbled and almost fell. It was a few seconds before Mr. Dursley realized that the man was wearing a violet cloak. He didn’t seem at all upset at being al- most knocked to the ground. On the contrary, his face split into a wide smile and he said in a squeaky voice that made passersby stare, “Don’t be sorry, my dear sir, for nothing could upset me today! Re- joice, for You-Know-Who has gone at last! Even Muggles like your- self should be celebrating, this happy, happy day!”<br>
    And the old man hugged Mr. Dursley around the middle and walked off.<br>
    Mr. Dursley stood rooted to the spot. He had been hugged by a complete stranger. He also thought he had been called a Muggle, whatever that was. He was rattled. He hurried to his car and set off for home, hoping he was imagining things, which he had never hoped before, because he didn’t approve of imagination.<br>
    As he pulled into the driveway of number four, the first thing he saw — and it didn’t improve his mood — was the tabby cat he’d spotted that morning. It was now sitting on his garden wall. He was sure it was the same one; it had the same markings around its eyes.<br>
    “Shoo!” said Mr. Dursley loudly.</p>"),
  (5, 1, "<img src='https://cdn.discordapp.com/attachments/1174578118892199976/1180701598364729435/1.jpg?ex=657e610d&is=656bec0d&hm=e955fc5a57c29a88de7a2961c70089ef9c50f81dd7deaee7d8a1a88be7de5951&' width='605' height='810'></a>"),
  (5, 2, "<img src='https://cdn.discordapp.com/attachments/1174578118892199976/1180701599321047140/2.jpg?ex=657e610d&is=656bec0d&hm=abf418d17e25b60d3ccef2c2feee4c592186b5e81189f80885778e2619249e59&' width='605' height='810'></a>"),
  (5, 3, "<img src='https://cdn.discordapp.com/attachments/1174578118892199976/1180701599669166150/3.jpg?ex=657e610d&is=656bec0d&hm=498b5d3c1e205cacfa49ef98c45e868b9543c5e56908e8bbff37cc8d6b99e26d&' width='605' height='810'></a>"),
  (5, 4, "<img src='https://cdn.discordapp.com/attachments/1174578118892199976/1180701599941787668/4.jpg?ex=657e610d&is=656bec0d&hm=1e1d72c8281355fb7664402c659fcfec89ffdb97d0c35d327810013fe2b64712&' width='605' height='810
  '></a>"),
  (5, 5, "<img src='https://cdn.discordapp.com/attachments/1174578118892199976/1180701600449314816/5.jpg?ex=657e610d&is=656bec0d&hm=031ed08dbe71581d315b5aa1f828a3f3fa9fcc2b27b515cc03e453d2fd8a86c1&' width='605' height='810'></a>"),
  (5, 6, "<img src='https://cdn.discordapp.com/attachments/1174578118892199976/1180701600793239643/6.jpg?ex=657e610e&is=656bec0e&hm=7aa908998561c469a8923cd6a8f9bc23f8d7ce4e6439653a2b7f11e0cfa18c71&' width='605' height='810'></a>"),
  (5, 7, "<img src='https://cdn.discordapp.com/attachments/1174578118892199976/1180701601019740180/7.jpg?ex=657e610e&is=656bec0e&hm=cca4b8bdeba844e2418c0560b759c208e79836ee6762b729977438048783cd13&' width='605' height='810'></a>"),
  (5, 8, "<img src='https://cdn.discordapp.com/attachments/1174578118892199976/1180701601304944680/8.jpg?ex=657e610e&is=656bec0e&hm=43a0aae155d8296bc68d5501e8f9d8ea6d1ff3168ca96db0146595d6116cb3e6&' width='605' height='810'></a>"),
  (5, 9, "<img src='https://cdn.discordapp.com/attachments/1174578118892199976/1180701601707589693/9.jpg?ex=657e610e&is=656bec0e&hm=c91cf9e9ed75fea4ff2b199e05d61db6dba642148ddb426c3c6e31c0abe295a9&' width='605' height='810'></a>"),
  (5, 10, "<img src='https://cdn.discordapp.com/attachments/1174578118892199976/1180701602387083374/10.jpg?ex=657e610e&is=656bec0e&hm=ae19f4003916c518a02c5fbcc763cd44dc2cb28e61a0a7079073374daf2e3534&' width='605' height='810'></a>"),
  (5, 11, "<img src='https://cdn.discordapp.com/attachments/1174578118892199976/1180701651565281320/11.jpg?ex=657e611a&is=656bec1a&hm=c0d7ca4e0d2ba1e29768070c8a01a57401f89330c4440130fce109d082ab60e9&' width='605' height='810'></a>"),
  (5, 12, "<img src='https://cdn.discordapp.com/attachments/1174578118892199976/1180701651791794226/12.jpg?ex=657e611a&is=656bec1a&hm=dfeeaa47151410e4e143aca0b772ac30921a5697bc8e2557bce23eec7c1d40bf&' width='605' height='810'></a>"),
  (5, 13, "<img src='https://cdn.discordapp.com/attachments/1174578118892199976/1180701652039245824/13.jpg?ex=657e611a&is=656bec1a&hm=a3409ba2538926c507628b10a68c361aef9726cb33857dd71fe48737125c494a&' width='605' height='810'></a>"),
  (5, 14, "<img src='https://cdn.discordapp.com/attachments/1174578118892199976/1180701652282507294/14.jpg?ex=657e611a&is=656bec1a&hm=363d9dd80a1880fbdbf9fbce4294f3799c816175c79c1ecaa65962c9d7153552&' width='605' height='810'></a>"),
  (5, 15, "<img src='https://cdn.discordapp.com/attachments/1174578118892199976/1180701652521603192/15.jpg?ex=657e611a&is=656bec1a&hm=46252c6df6e9ac9e1c1dfb207d9742e9e6e329d47d3f304d451cc424e707c89d&' width='605' height='810'></a>"),
  (5, 16, "<img src='https://cdn.discordapp.com/attachments/1174578118892199976/1180701652735500408/16.jpg?ex=657e611a&is=656bec1a&hm=43dc6013f45743c2987a08bf587d612e2f04a529a7b59a171cd9cf561ece0480&' width='605' height='810'></a>"),
  (5, 17, "<img src='https://cdn.discordapp.com/attachments/1174578118892199976/1180701652945207467/17.jpg?ex=657e611a&is=656bec1a&hm=0ecab457daf59d86a6a6c5b21b1755901349d2effd400cc0609832feb5b38899&' width='605' height='810'></a>"),
  (5, 18, "<img src='https://cdn.discordapp.com/attachments/1174578118892199976/1180701653192691712/18.jpg?ex=657e611a&is=656bec1a&hm=c0317afd089c50aaf7ea1d5c43821ff173a8a40ca48b66554100619524e3e743&' width='605' height='810'></a>"),
  (5, 19, "<img src='https://cdn.discordapp.com/attachments/1174578118892199976/1180701653423366205/19.jpg?ex=657e611a&is=656bec1a&hm=10f4833832cc87866d6626d56f94b793ca14a6de3799730f9e3f7e3694a2fc84&' width='605' height='810'></a>");


-- run order #4
CREATE DATABASE IF NOT EXISTS Leaflet;
USE Leaflet;

DROP TABLE IF EXISTS genre_tags;

CREATE TABLE genre_tags(
  book_id				          INT	NOT NULL,
  fiction				          TINYINT(1) NOT NULL,
  nonfiction			        TINYINT(1) NOT NULL,
  fantasy				          TINYINT(1) NOT NULL,
  action_adventure	      TINYINT(1) NOT NULL,
  mystery				          TINYINT(1) NOT NULL,
  thriller			          TINYINT(1) NOT NULL,
  self_help			          TINYINT(1) NOT NULL,
  graphic_novel		        TINYINT(1) NOT NULL,
  inspirational		        TINYINT(1) NOT NULL,
  romance				          TINYINT(1) NOT NULL,
  horror				          TINYINT(1) NOT NULL,
  comedy				          TINYINT(1) NOT NULL,
  PRIMARY KEY (book_id),
  FOREIGN KEY (book_id) REFERENCES book_info(book_id)
);

INSERT INTO genre_tags(
  book_id, 
  fiction, 
  nonfiction, 
  fantasy, 
  action_adventure, 
  mystery, 
  thriller, 
  self_help, 
  graphic_novel, 
  inspirational, 
  romance, 
  horror, 
  comedy) 
VALUES
  (1, 0, 1, 0, 0, 0, 0, 1, 0, 1, 0, 0, 1),
  (2, 0, 1, 0, 0, 0, 0, 1, 0, 1, 0, 0, 1),
  (3, 1, 0, 1, 1, 0, 0, 0, 0, 0, 0, 0, 1),
  (4, 1, 0, 0, 1, 1, 1, 0, 0, 0, 0, 0, 0),
  (5, 1, 0, 1, 1, 0, 1, 0, 1, 0, 0, 0, 0),
  (6, 1, 0, 1, 1, 0, 0, 0, 0, 0, 0, 0, 1),
  (7, 1, 0, 0, 1, 0, 1, 0, 0, 0, 0, 1, 0),
  (8, 1, 0, 0, 1, 1, 0, 0, 0, 1, 0, 0, 0),
  (9, 1, 0, 1, 1, 0, 0, 0, 0, 1, 0, 0, 1),
  (10, 1, 0, 0, 0, 0, 0, 0, 0, 1, 1, 0, 1),
  (11, 1, 0, 1, 1, 1, 1, 0, 0, 0, 0, 1, 0),
  (12, 1, 0, 0, 1, 1, 1, 0, 0, 0, 0, 0, 0),
  (13, 0, 1, 0, 1, 0, 0, 0, 0, 1, 0, 0, 0),
  (14, 0, 1, 0, 1, 0, 0, 0, 0, 1, 0, 0, 0),
  (15, 1, 0, 1, 1, 1, 1, 0, 0, 0, 0, 1, 0),
  (16, 1, 0, 1, 1, 0, 0, 0, 0, 0, 0, 0, 1),
  (17, 1, 0, 1, 1, 0, 0, 0, 0, 0, 0, 0, 1),
  (18, 1, 0, 1, 1, 0, 0, 0, 0, 0, 0, 0, 1),
  (19, 1, 0, 1, 1, 0, 0, 0, 0, 0, 0, 0, 1),
  (20, 1, 0, 1, 1, 0, 0, 0, 0, 0, 0, 0, 1),
  (21, 1, 0, 1, 1, 0, 0, 0, 0, 0, 0, 0, 1),
  (22, 1, 0, 0, 1, 1, 1, 0, 0, 0, 0, 0, 0),
  (23, 1, 0, 0, 1, 1, 1, 0, 0, 0, 0, 0, 0),
  (24, 1, 0, 0, 1, 1, 1, 0, 0, 0, 0, 0, 0),
  (25, 1, 0, 0, 1, 1, 1, 0, 0, 0, 0, 0, 0);


-- run order #5
CREATE DATABASE IF NOT EXISTS Leaflet;
USE Leaflet;

DROP TABLE IF EXISTS library;

-- library shows the purchases 
CREATE TABLE library(
  user_id				        INT	NOT NULL,
  book_id				        INT	NOT NULL,
  FOREIGN KEY (user_id) REFERENCES user_login(user_id),
  FOREIGN KEY (book_id) REFERENCES book_info(book_id)
);

-- YiZhou, ScottHartsell, HankBennett, MateoLopez
INSERT INTO library (
    user_id, 
    book_id) 
VALUES
  (1, 1),
  (1, 18),
  (1, 5),
  (1, 3),
  (1, 1),
  (2, 2),
  (2, 3),
  (2, 4),
  (3, 5),
  (3, 6),
  (3, 7),
  (4, 8),
  (4, 9),
  (4, 10),
  (4, 11);

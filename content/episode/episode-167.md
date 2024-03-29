+++
title = "Episode 167"
description = """
  This week we bring you part 3 of Camila's cybersecurity buzzwords series -
  looking at blockchain, zero trust and quantum / post-quantum security.
  """
date = 2022-07-11T16:42:00+09:30
lastmod = 2022-07-11T16:43:58+09:30
draft = false
weight = 1001
episode_image = "img/usp_logo_500.png"
explicit = "no"
podcast_file = "USP_E167.mp3"
podcast_duration = 1946
podcast_bytes = 19048865
permalink = "https://ubuntusecuritypodcast.org/episode-167/"
guid = "d951151f5e854829dda7bf83527a57073eaf568493c13c48f3f942c63cbb1b57ca6322347e45784a8e52a953100af4864379a8f88243dd8ddbffbfecb6307eb5"
+++

## Overview {#overview}

This week we bring you part 3 of Camila's cybersecurity buzzwords series -
looking at blockchain, zero trust and quantum / post-quantum security.


## Decoding cybersecurity buzzwords (part 3) [00:10] {#decoding-cybersecurity-buzzwords--part-3--00-10}

Hello listener! Hopefully I set the stage well enough last time that you
are back here today for more after getting excited about ending our cyber
security buzzword journey with a bang! A journey where we try to understand
the meaning of the word behind the buzz in order to better navigate this
crazy world of ours! A little bit of an exaggerated description, some might
say, but definitely not lacking in inspiration! If you haven't listened to
our previous episodes I highly recommend you do so before proceeding with
this one, as preparation will be key to digest what is to come. Oh yes,
today is going to be a good one. So let's get buzzing and let's get into
it, shall we?

Buzzword #7 - which is the first buzzword of today: blockchain. Ah...this
one I had to do some serious research on, because even though I hear about
it all the time, as you probably do to, I didn't really know the specifics
of how it worked. Anyway, one thing I did know is that this is DEFINITELY a
buzzword, one that started trending and gaining traction together with all
of the crypto currencies that started showing up out there. And now, I
can't even see a job listing without the good old Blockchain developer
position included within the various openings. So, what is the notorious
blockchain afterall? Even after researching about this and learning more,
it is still a very complicated thing to explain, so please be patient with
me if I don't get all the details right, although I will attempt to be as
accurate as possible. Well, let's board this train and use crypto
currencies to explain how blockchains work from a HIGH LEVEL point of view,
shall we? Please do note, however, that I did say HIGH LEVEL! I am by no
means a block chain/crypto currency expert, as I previously mentioned, and
I will only share with you the basics of how this thing works, so that we
can really get past the buzzword point of the word, even though we might
not reach the true connoseuir point of it. Anyway! Let's get to it!

Think about a blockchain as being a distributed ledger, which as per
dictionary definition is a "a book or other collection of financial
accounts of a particular type". So, this applies to our cryptocurrency
example here, and to blockchains being applied to crypto currencies. Just
to make that very clear. Each block in the blockchain is like a page of
this ledger. What about the chain? We will get to that part soon
enough. For our cryptocurrency situation here, let's consider that each
block in our blockchain will contain three important groups of information:
data regarding transactions that have been happening for a specific
cryptocurrency, a hash for this data and the hash of the block that was
generated before it, or, if you'd rather think of it in analogy terms, the
hash of the "page" that comes before it. What is a hash, you might ask? To
keep it simple, since our topic for today is not hashing, a hash is a fixed
size data output that is generated after the processing of some kind of
input of variable length. So, for example, a number generated as output for
the input data that is a word, which can have from 1 to...a lot of
letters. The word is processed such that the position of each letter in the
alphabet is used in a sum that starts with value 0. Word 'blockchain', in
this case, would have a hash of...uh, I don't want to calculate that, so
let's choose a simpler example. Word 'aaa' would have a hash of 3. There,
nice and easy...and lazy. Anyway, with a good hash function - a
cryptographic hash function - different input data, after processed by a
specific hash algorithm, will 99% of the time generate different outputs
(which is not the case for our earlier example. You can try to figure out
different words that would have the same hash. I'll leave that as an
exercise for you). All of the outputs will possess the same format, which
is usually a fixed size sequence of alphanumeric characters, but, more than
that, for our case, predicting changes in the hash by analyzing changes in
the data is not something easy to do, that is how powerful out
cryptographic hash algorithm is. Therefore, we can look at our hashes as if
it were the fingerprint of the data it is connected to, if said data were a
person able to have fingerprints. Different data equals different
fingerprints, and forging a fingerprint, or, in other words, changing your
own, is not something you can easily or seamlessly do. Ok...that being
said, can you start seeing how our blocks actually constitute a chain? We
have various sets of data containing information about financial
transactions that are happening. Connected to each set is the hash for that
specific set, as is the hash of the set that came before it! So block n
will always know who n-1 is, n-1 will know who n-2 is, and so on and so
forth. Therefore, if I am an attacker and I want to tamper with the data in
the blockchain and say...add a transaction in which I make my worst enemy
transfer all of their funds to my account, I can't just change the data of
a block in the middle of the chain without causing havoc for all of the
blocks that follow it. To be able to sneakily add my fake transaction into
the blockchain, not only would I need to change the data segment of the
block which will contain the transaction, I will also need to change the
“hash of the previous block” segment for all blocks that come after this
block. If I am able to do this instantaneously, say...using a computer,
then the problem is solved. But of course it wouldn't be that easy, or else
I don't think everyone and their mother would be freaking out about how
awesome or how safe blockchain is. What is the catch then? The blockchain
protocol forces you to provide a proof-of-work every time you wish to add a
block to the chain. What exactly does this mean? The blockchain challenges
you. It tells you: you cannot add a page to the ledger that is myself
unless you solve this very hard puzzle that even a computer will take a
humanly noticeable time to solve. This puzzle could be, for example,
discovering which set of 100 characters you need to add at the end of the
data set to force the block's hash to start with 10 consecutive zeros. As I
previously said, it is not easy to predict what is the output of a hash
function given an input when you have a good hash function, so the easiest
way to achieve this is by brute forcing it: testing all possibilities until
you find something that matches that which you are looking for. Therefore,
to add a block to the chain, you must waste some time solving the puzzle,
which in turn means that changes made to the middle of the chain cannot
propagate instantaneously throughout the tail of the chain. You change a
block and you need to change all that follow, but for each block you will
take some time solving the puzzle before adding it to the chain. If I were
the one listening to this podcast and not the one doing the explaining, at
this point I would have two questions: (1) why does this matter if I have
full control of the blockchain? (2) Why not add your malicious transaction
to the last block instead of adding it to a block in the middle and solve
this whole 'having to update subsequent blocks' in order to achieve lots of
money in your bank account? I don't know if you have these questions as
well, or started asking them after I mentioned it, but what I do know and
what I can tell you is that the same answer applies to both of these:
blockchain does not rely on a centralized entity to manage it, it is
instead distributed. Why should we care? Because then there is never only
one person that is in full control of the blockchain (the ledger). Everyone
is able to grab a copy of this blockchain, follow which transactions are
happening, and include them into a new block. If more than 50% of the peers
which participate in building the ledger agree on the new block to be
added, meaning, if more than 50% has the same resulting block after
including transactions broadcasted and gathered, then this block is
officially added to the chain and considered the last block of said
chain. Therefore, if I plan to include a fake transaction to the new block
that will be added to the chain, I need 50% of the peers that are also
listening to transactions and building this new block to agree to include
my fake transaction, which might seem simple if you have a lot of friends,
but the beauty in having a non-centralized server lies in diversity and on
the fact that most people will probably not want to partake in you shady
activities of tampering with the blockchain. And even if it is technically
possible to do this Mr.Smarty Pants - I see you there in the corner - that
will try to bring the argument down by saying “but what if I am super
powerful and I CAN convince everyone to do it”, see it as one more thing a
potential attacker needs to do, another burdensome task to perform in order
to achieve the desired result: change the block AND convince more than 50%
of the people in the peer network to go along with it. Have you ever been
in any comment section on the Internet? If you have, you know that
'agreeing on things' is not something the Internet community does very
well. Anyway...more than preventing you from changing the last block, the
distributed peer network will also enforce the utility of things such as
the proof-of-work. If the blockchain were to be controlled by one single
entity, then it matters less if it takes one nanosecond to perform the
proof-of-work or if it takes a few minutes. You are a single entity in
control of the data, you can eventually catch up with the new blocks that
will be added to the chain. Maybe you have 1000 super computers on the side
to calculate the blocks that will follow your tampered one, and then the
proof-of-work is rendered kind of useless. However, with a distributed
network, each peer is trying to solve the puzzle to add the next block to
the chain, and once again, you can create however many blocks with fake
data you want, if the entire peer-to-peer network disagrees with you on
what that block should be, it won't be added to the chain...and you will
need to ask that for each new block you want to add. Other people, some of
which might not have been bribed by Mr. Smarty Pants, may end up obtaining
the next block in the chain first, and then all of your super computers
will have worked for naught, and you would need to start all over
again. It's like participating in an auction...you can make a very high
bid...but other people can also do the same. Plus, it's even worse because
everyone participating in the auction is actually checking your bank
account to see if you really have the money you claim to have, and if you
make a false bid...they can call you out on your lies if they wish to do
so. The last question I think remains is: what would make people want to
participate in the creation of a blockchain? Seems like too much work and
no fun, and choosing people for the job defeats the purpose of not having a
centralized entity to manage the ledger, because then, as the verb implies,
you get to CHOOSE who will participate, and you can choose whoever you
want, and maybe these will be people that will side with you. Well, for
crypto currencies I can tell you that the bang is in the buck. The person
that is the first to solve the puzzle which allows for inclusion of a new
block in the chain is rewarded with a certain amount of crypto
currency. Therefore, people want to participate in the blockchain creation
and make sure to check that all is well because they will gain something
from it. This is what we know as crypto mining. Someone who is crypto
mining is trying to earn some digital cash by adding a new block to the
crypto currency ledger before other people, and that is how the problem is
solved. Give the people something that they want and they shall follow!
Well...I think that is enough talk about blockchain, am I right? This is so
long that it has almost become a mini-episode inside of a bigger one! So
let's move on and actually go to our next and almost last buzzword of this
series of episodes!

Next buzzword, suggested by our one and only Alex Murray, buzzword #8, is
zero trust. This one is a hard one for me to explain and I will tell you
why: I already have kinf of a zero trust mentality, or at least I have only
heard of the "zero trust way" ever since I started studying cyber
security. Or maybe it is because the term zero trust was coined very close
to the time I was born. Baby me didn't even have to know the non-zero trust
model, because at that time the "never trust, always verify" slogan for
this model was already something people were considering. So what is zero
trust after all? I think I will begin defining it by saying it is a
model. A set of rules, frameworks and principles to take into consideration
when setting up your IT infrastructure, one that, as the slogan itself
says, trusts no one. Trusts zero persons...zero trust. Get the origin of
the name now? As a second way to define it, or as a way to compliment the
definition, let us go back and understand what is a non-zero trust model
and why the zero trust model was created. A time where the Internet was
simpler, and networks were a lot more self contained than they are
today. The clouds were only the ones you could see flying around in the sky
and WiFi was probably just a weird name someone would give to their
pet. When your entire infrastructure is restricted to one single area and
your network can only be accessed by those physically present where devices
of that network are also physically present at, it is easy to define your
headquarters and whoever is in it as being a safe space, with safe
people. You only let in people who are allowed to be in there, and people
who are allowed to be in there won't cause any harm to the infrastructure
because they are friends, and not foes. Right? In comes the insider threat,
that disgruntled employee that decides to do malicious things to the
company's resources and has the means to do so exactly because they are
trusted. In comes more technology that allows your infrastructure to exist
in more than one physical location, and that allows people to access
company resources from areas outside the supposed trusted security
perimeter. In come new business models for software products where third
party companies are responsible for managing resource from your own company
as part of a service provided by them together with their own software. And
then the castle walls are no longer enough to protect the kingdom, because
the kingdom is no longer just within the castle walls. Zero trust is the
model that starts to consider security when the castle walls are no longer
enough to prevent the occurrence of cyber attacks, exactly because we can
have foes which are inside our own network and because we are expanding our
own network and letting it exist beyond what would be a trusted physical
location. To mention a few exampĺes...remember our previous buzzword
'phishing' from a few episodes back? Well imagine that you have an attacker
which is able to successfully trick one of your employees in a phishing
campaign they are running. This employee clicks a malicious link and gives
this attacker access to the target company's internal network with their
own set of credentials. In a model that is not zero trust, this employee’s
user might have a lot of privileges inside the network. Why not let them
access the database containing sensitive data? They work for the company,
they must be trustworthy! ...and yet...now our attacker has access to that
same database because they were able to trick someone we trust into giving
them privileged information. Notice how we don't even need to have a
disgruntled employee to have an insider threat. It can be the happiest
company in the world! All people who work for this company love it and
would never harm it...but one of its employees just became an unknowing
insider threat because they fell for the tricks of an attacker well trained
in the arts of social engineering. Attacks have evolved, so the security
model needs to evolve with it, and that is one of the advantages of
considering the zero trust model. Another example of a situation where you
might need to consider this model: nowadays we can access our work
environments from anywhere, so long as anywhere has an available WiFi
password for you to use. Maybe you work from home but you are tired of
looking at the same boring old view from outside your window. You decide to
go work at a local sweets shop for a change of scenery and a change in your
lunch menu for that day. The shop has a delightful atmosphere and also has
free WiFi. You connect to their network and start working, filled with new
energy and joy while you drink a cup of coffee and eat some delicious
'insert any type of food that you love here'. And yet...ah, once again I
say 'and yet', and by now you must know some bad news is coming: and yet,
this is a free network, meaning that anyone, including attackers can
connect to it. You might use a VPN to access your company’s internal
network, which encrypts data you are sending through the public network to
it, however, you also end up using some applications without connecting to
a VPN and sometimes without even having to use encryption. An attacker is
sniffing for data, searching for gold, in this sweets shop’s local network,
and ends up running across your network traffic and is able to extract some
juicy information from it. And once again assets and resources are not kept
safe because not enough is being considered when establishing processes and
permissions for a company's network. Yes, you are a trusted user and your
device SHOULD be trustworthy, but as many times we have seen, it is not
always that theory and practice shake hands and call it a day. IT
infrastructures have evolved, so the security model needs to evolve with
it, and that is one of the advantages of considering the zero trust
model. Oh...wait? Am I repeating myself? Then it must mean I really want
you to remember that, don't you think? Anyway, to close this topic off, I
will say that one of the most important principles in the zero trust model
is the principle of least privilege, which is a good place to start from if
you intend to implement this model in your own environment. The principle
of least privilege states that you should only allow a user to have access
to resources that they will actually need...no less and no more. No less
because otherwise they won't be able to do their jobs. No more because if
you give them more, you are UNNECESSARILY increasing the attack surface for
your network. If something does not exist, it cannot be taken advantage
of. And that is where I'll leave it...so you can think about this a little
more while drinking your coffee and connecting to that free WiFi network in
a sweets shop. Careful!

Give it up to buzzword #9, our last buzzword in the list! Quantum and post
quantum security! Let's finish this off with a big bang, pun intended for
the physics lovers out there, and talk about the eerie and wacky thing that
is quantum computing. Not really though, because I can definitely assure
you that physics is not my jam, and as the name suggests, quantum computing
is related to physics and, surprise, surprise, the quantum theory! So...I
could say that the next generation of computers will arise in quantum
computers, however, it is a little bit more complicated than that, as the
quantum computer will be useful to solve a specific set of problems, mainly
the ones it was conceptualized to solve. As a bonus, some problems it will
be able to solve include a few well known ones which we still can't
efficiently solve with our old regular computers today. However, at the
same time problems solved by quantum computers also do not include some of
the problems which we already can solve with our old regular computers
today. Quantum computers, for example, are not too big on big data, and are
limited in their I/O capabilities...so we can keep using regular computers
for that. It also wouldn't be very interesting to use a quantum computer to
write blog posts, or create internet memes or even use an app to listen to
this awesome podcast: shameless plug. The point is, the quantum computer
will not substitute our well known 0s and 1s calculator, it will instead be
useful, to solve a few sets of complex problems which require small data
sets as input and to model quantum systems…hence the name quantum
computers. All of that being said, instead of a son of what we know as the
current computer, we could see the quantum computer as a young cousin of
our well known 64bit friend. Quantum computing, to perform calculations,
instead of simply using the regular transistors which represent a 0 or a 1
at a certain point in time, tries to consider the collective properties of
quantum states, such as superposition, interference, and entanglement, to
obtain results we wouldn't be able to with the technology we currently
have. Wow, so many complicated words in one sentence! I won't explain any
of those today though, sorry about that.  However, what I will explain is
that instead of bits, quantum computers use qubits. Qubits can have more
than just a 0 or 1 state at a given instant, and this state is actually
based on probabilities of results you might have for a certain task. When
solving a specific problem, a regular computer needs to test all
possibilities individually since bits can only have one state at a given
time, while a quantum computer, due to the nature of qubits, is able to go
down various paths at once since qubits are able to exist in more than one
state at a given time. Of course, to extract useful data from such a
different base unit, you need to create algorithms that will appropriately
use them and extract results from them, so quantum computer algorithms are
not the same as our regular and well known 0 and 1 logic gate
algorithms. Yes, I know...I explained a lot of stuff without actually
explaining it, and unfortunately...I can't offer you much more. Even
scientists say they don't fully understand quantum theory, so I can assure
that lil' old me will not be the one to crack that code before
them. However, what I can offer you an explanation on why this has become a
CYBER SECURITY buzzword. Out of physics and back into cyber security! We
might not be using quantum computers to write blog posts about quantum
computing itself, however, we CAN use quantum computers to easily and
quickly solve problems which would kind of render our current cryptographic
algorithms useless! So, the current asymmetric cryptographic algorithms
that we use are based on mathematical premises which the quantum computer
aims to quickly ignore. One example of that is the ever difficult problem
of obtaining the prime factors for very large numbers. Being able to factor
a number and extract its prime factors might seem like something simple: 6
equals to 2 times 3. 51 equals 3 times 17, 100 equals 2 times 2 times 5
times 5...and so on. Start actually putting in some large numbers over
there and then ask yourself the same question: what are the prime factors
of 589.450.367.123.907? Now imagine that with a decimal number that has 617
digits. You might want to buy a lot of pens if you plan on doing that by
hand, because I can tell you not even your computer can do that in a viable
time frame. You will be living your billionth next life when the computer
beeps reminding you that one of your past incarnations wanted to crack that
key. The point here is, this is a difficult problem to solve and that is
why these algorithms are considered safe and are widely used in encryption
protocols for various software out there. In come quantum computers and
actually make this an easy and quick problem to solve. Yeah...I know what
you are thinking...now what? Now my friends, it is time to focus our
efforts on developing post-quantum cryptographic algorithms! And there it
is, our actual last buzzword! Have you ever heard the saying "if it ain't
broke, don't fix it"? Well, in this case, it will be broken, repeatedly, so
we do need to fix it! We need to find new ways to encrypt our data, and
evolve cryptographic algorithms in order to maintain confidentiality of
this data when faced with possible future quantum computer attacks. And
yes, I know that quantum computers will not be easily accessible to every
single person on the planet, at least in the beginning, as I also know that
quantum attacks won't be your everyday script-kiddie daily attack of
choice. That does not mean, however, that we shouldn't be preparing for a
reality we are certain will exist in the future. Better safe than
sorry. Better still encrypted than sorry!

Well friends, those are the buzzwords I have for you. I created this list
based on words I know and am quite tired of seeing everywhere, and also
based on suggestions given to me by the Ubuntu Security team! However, I do
know that these are not the only ones, and that these will definitely not
be the last words we extensively overhear regarding the cyber security
world. As we all know, technology is ever changing and ever evolving, and
in suit, the buzzwords shall follow. Maybe in a few years you can do a
check-in, go back to this episode and see what has changed and how you
might see some of these buzzwords in a different light once they have lost
their buzz and new queen bees have arrived to torment us in every cyber
security advertisement ever! Feel free to share your thoughts and share
words I might have missed that you think are cyber security buzzwords in
any of our social media channels! I hope you enjoyed this series, for now,
I bid you all farewell, and until next time! Bye!


## Get in contact {#get-in-contact}

-   [security@ubuntu.com](mailto:security@ubuntu.com)
-   [#ubuntu-security on the Libera.Chat IRC network](https://libera.chat)
-   [ubuntu-hardened mailing list](https://lists.ubuntu.com/mailman/listinfo/ubuntu-hardened)
-   [Security section on discourse.ubuntu.com](https://discourse.ubuntu.com/c/security)
-   [@ubuntu_sec on twitter](https://twitter.com/ubuntu_sec)
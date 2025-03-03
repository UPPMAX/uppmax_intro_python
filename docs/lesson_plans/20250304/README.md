# 2025-03-04

## 2025-01-13

The course was widened in scope from UPPMAX-only to NAISS-wide,
two hours before a newsletter needed to be sent out.
I prepared the text for a newsletter, assuming I will get the course
material in shape later.

First I will get the website into good shape, before transitioning
the content to be NAISS-wide.
Done! [Version 2.3.1](https://github.com/UPPMAX/uppmax_intro_python/releases/tag/v2.3.1)
builds cleanly!

One drawback of being NAISS-wide is that UPPMAX (as far as I can see)
has the only user documentation suitable for teaching.
I will be ruthless when needed, and add things to the UPPMAX doc.

Another drawback of being NAISS-wide is that the evaluation question
'I am comfortable using my HPC center's documentation' will vary
per center. It *is* part of the course to use other center's documentation,
I will encourage our learners to give feedback regarding other center's
documentation.

- [x] Add to the evaluation:
  'If you think the documentation of your HPC cluster should be improved,
  write down its name here'

Going NAISS-wide will make me
remove 'I can start an interactive session on my HPC cluster'
as not all NAISS clusters have this. If they have it, they differ.
This course is about learning Python and less on HPC clusters

- [x] Remove interactive session

## 2025-01-21

The newsletter was rushed and I only know the constraints I've asked for.
This makes it hard to write a 'Welcome to the course' email, as
too many things may change in the very near future.

At the end of the day, I decided to write an email with whatever I knew
to the learners.

## 2025-02-18

The number of registrations passed 60, hence I asked Björn Claremar
for help. I expect a third to show up, which is 20 learners.
Putting these in breakout rooms of 3 learners is 7 breakout rooms.
I think 5 breakout rooms per teacher is reasonable.
I have the exercise procedure well documented for any helper,
so that anyone can understand what is expected of him/her.

## 2025-02-24

The 'Working with Python scripts' seems redundant to me.
I will need to double-check before I delete it.
On the other hand, it seems like a good practice ...

## 2025-02-26

I decided to keep the 'Working with Python scripts' and I explain
the reason at its page.

I sent all learners [the '1 week left' reminder](../../communication/20250304/reminder_email_1_week_left.md)
and asked if there were more HPC clusters that I should discuss.
Out of around 63 learners, 2 responded and hoped me to add the Vera HPC
cluster. As I cannot request access myself, I asked to get access to one
of their Vera projects, or else to give them access to my Alvis
project. Both learners accepted to use my Alvis project.

Remember for next time:

- [/] List the clusters supported by this course. These are:
  Alvis, Bianca, COSMOS, Dardel, Kebnekaise, Rackham, Tetralith

Remember for next time:

- [x] Also publish the date when registration closes

## 2025-03-03

I had emails from two learners that had trouble preparing
for the course.

One learner got this text from NSC:

> Perhaps there has been some misunderstanding - are you participating in
> a "Introduction to python" course
> (e.g. <https://www.naiss.se/event/introduction-to-python/>).
> If so, the course organizers have the responsibility
> of requesting NAISS resources. You can strike the proposal in this case.
> If you are planning to run a python course yourself,
> we need more information to grant your application.
> Note, for NAISS to accept applications for courses they must be at the
> PhD level.
> We also need to know (or have an estimate) of the number of participants,
> the dates and duration of the course and some information on the
> content/softwares to be used and a justification
> for the amount of resources requested.

I added the learner to my project. From this, I now understand that
I need to prepare the resources for my courses. Luckily, I already
did so :-)

This does mean I need to change the registration form.

- [x] Update registration form and let learners pick an HPC cluster,
  so I can add them to my projects

I've closed the registration form.

The text was:

> This is the registration form for the NAISS course 'Intro to Python',
> <https://docs.uppmax.uu.se/courses_workshops/intro_to_python/> .

I have added these lines:

> Registration is closed.
>
> However, if you are already comfortable using a NAISS HPC cluster,
> you are still welcome, as you can still fulfill the prerequisites
> at <https://uppmax.github.io/uppmax_intro_python/prereqs/> in time.
> Contact [my email] and he will happily give you the course details :-)

So, for tomorrow, do:

- [x] Decide upon teaching form
- [x] Create an overview of how hard exercises
  are for the different HPC clusters

Teaching form:

- Use rooms called after the HPC clusters first. Keep these
  rooms until all have logged in
    - [x] Check how easy this is to do in Zoom
        - This needs to be done by hand. Hence, use a table instead
- Randomly shuffle people when we start doing 'regular Python'

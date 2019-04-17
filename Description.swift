/*  The 'Ultimate' Collection View Boilerplate  ❏  1st commit Apr. 03, 2019  ❏  Created by Garth Snyder a.k.a. gladiusKatana ⚔️
 
 
    ___________________________________________
   |    | ❏ ❏ ❏ ❏ ❏ ❏ ❏ ❏ ❏ ❏ ❏ ❏ ❏ ❏ ❏ ❏ |    |
   |    | ❏ ❏ ❏ ❏ ❏ ❏ ❏ ❏ ❏ ❏ ❏ ❏ ❏ ❏ ❏ ❏ |    |
   |    | ❏ ❏ ❏ ❏ ❏ ❏ ❏ ❏ ❏ ❏ ❏ ❏ ❏ ❏ ❏ ❏ |    |
   |  | | ❏ ❏ ❏ ❏ ❏ ❏ ❏ ❏ ❏ ❏ ❏ ❏ ❏ ❏ ❏ ❏ |    |
   | .| | ❏ ❏ ❏ ❏ ❏ ❏ ❏ ❏ ❏ ❏ ❏ ❏ ❏ ❏ ❏ ❏ |  ⃝ |
   |  | | ❏ ❏ ❏ ❏ ❏ ❏ ❏ ❏ ❏ ❏ ❏ ❏ ❏ ❏ ❏ ❏ |    |
   |  • | ❏ ❏ ❏ ❏ ❏ ❏ ❏ ❏ ❏ ❏ ❏ ❏ ❏ ❏ ❏ ❏ |    |
   |    | ❏ ❏ ❏ ❏ ❏ ❏ ❏ ❏ ❏ ❏ ❏ ❏ ❏ ❏ ❏ ❏ |    |
   |    | ❏ ❏ ❏ ❏ ❏ ❏ ❏ ❏ ❏ ❏ ❏ ❏ ❏ ❏ ❏ ❏ |    |
    ⎻⎻⎻⎻⎻⎻⎻⎻⎻⎻⎻⎻⎻⎻⎻⎻⎻⎻⎻⎻⎻⎻⎻⎻⎻⎻⎻⎻⎻⎻⎻⎻⎻⎻⎻⎻⎻⎻⎻⎻⎻⎻⎻
 
 
                                                ❏ The 'Ultimate' Collection View Boilerplate
 

                                                is a mini-app you can download and run,
 
 built on a single class (*) that covers most ways you'd probably want a collection view to behave.
 
 Just initialize the collection views you need, with the parameters you need.  That's it :)
 
 
 
 
 
                                                ❏ Goals
 
 
 ❏❏  To save you development time (**), by letting you quickly adapt it out-of-the-box to make your app logic as easy as possible (***)
 
 ❏❏  To make collection views look, to the developer(****), more like a simple data structure (like a dictionary)
     rather than the daunting, clumsy creatures they often are. (*****)
 
 
 
 
 
 
 
 
 
 
 
 
 ❏ Notes
 
 
 (*) ok, it's really two: custom collection view controller and layout. But you can't use one without the other (the latter is passed into the former, at initialization — see Vars.swift)... so it's sometimes useful to think of them as a single entity.
 
 
 (**) it will especially save you time if your application requires a collection view controller subclass with a custom UICollectionViewFlowLayout subclass as its layout. Depending on use cases, custom flow layouts can involve quite a lot of code. (See files under 'ViewModel'.)
 
 
 (***) The best example of this is probably the layout property  loadsHorizontally .  Setting it to =true makes the logic for some apps (like calendars) much easier to implement than with the layout vertically loading the cells.  That's because when loading cells, you want their index paths' looping order —  x,y or y,x — to conform to the direction your app needs to 'flow' in.  iOS has built this nested looping behaviour right into the method  cellForItemAtIndexPath: , so you might as well use it properly every time, instead of, say, writing some other custom logic.
 
 Example projects employing this:
 
     [iOS] A calendar  ̣ ̣ ̣ ̣ ̣ ̣ ̣ ̣ ̣ ̣ ̣ ̣ ̣ ̣ ̣ ̣ ̣ ̣ ̣ ̣ ̣ ̣ ̣ ̣ ̣ ̣ ̣ ̣ ̣ ̣ loadsHorizontally =true  (download & run at https://github.com/gladiusKatana/DMY-Tabs-Calendar ).
     [iOS] A timetable  ̣ ̣ ̣ ̣ ̣ ̣ ̣ ̣ ̣ ̣ ̣ ̣ ̣ ̣ ̣ ̣ ̣ ̣ ̣ ̣ ̣ ̣ ̣ ̣ ̣ ̣ ̣ ̣ ̣ loadsHorizontally =false
     [iOS] A spreadsheet-like financial planner  ̣ ̣ ̣ ̣ loadsHorizontally =false
 
 (Now, what if you wanted to write, say, an app that combined *all* of the above mini-apps?  Wouldn't you like to use a single class(*), rather than *two for each* (custom collection view controller and layout)!
 
 
 (****) In particular, devs who prefer to write most projects purely programmatically, rather than using storyboards.
 
 
 (*****) Try copying the Creature below, and pasting him into the river beside where he is currently basking (does it work?)...
 

 
 
 
 
 
 
                                                         //{\/\}v/\/\{/\/\ \\ } ( ◉~) ______________
                                                "rather than{/\/\}v/\/\{/\/\}/\\       ▽▽▾▿▿▾▽▽▿▽▽▿▽▾
                                           the daunting,\\\|\/\\//\\/\/\/\\/\/\ \_____⧍⧍__▲⧍▵⧍_▵▴_▵
                                     clumsy creatures \//v/\/\/\/\/\//\/\/\/\\\
                                  they often//\// \/\/{\/\\/\/\/\\/{/\/\/\}
                                are"|/\/\//\         {/\/\}       {/\/\}
              |\             \/\/\/\/\/               {//} {/\}      {//} {/\}
                \/\\/\   //\/\ / \                          |\\\            \\\\
                    \/\ \/\\/ \
 
 
 
 
 
 
                                            ______________________________________________


 

 
 
 
 
                                            ______________________________________________
 
 
                                                        ...(Just an analogy
                                                    for how things might go,
                                               if you paste someone else's
                                            collection view
                                          code into your
                                     project)
 
 
 
                                                                                                ❏  Created by Garth Snyder a.k.a. gladiusKatana ⚔️
 
 
                                                ❏ Coming Updates ❏
 
  

    [Performance]
  
    even faster (& 100% reliable) tabbed-style navigation between collection views, even on old devices
    (testing this now, in the project "DMY-Tabs-Calendar").
    This may be a matter of personal preference (I like tabbed navigation bettern than, e.g., using the standard iOS back button - it's just faster.)
 
 
 
 
    [UI]
  
    cell cornerRadius & layer border init parameters
 
 
 
 
    [UX - code]
  
    more explanatory comments
 
 */
 






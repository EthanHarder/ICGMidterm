# ICGMidterm
 (A blank unity project was created prior to the Exam, at Alvaro's permission. Just to explain the commit timings).


 Part1: I decided It felt right to try and make this a 3d rendition, so I went with that. It was constructed Entirely with primatives. I was hoping to get some simple side scrolling built, but It ended up out of scope. A simple diffuse texture made in photoshop was used to create the 'sand', though I admit my art quality leaves a lot to be desired givin the time constraint.

 Part2: Toon Shader. Toon Shader was created with the content provided in the Lab 5 content Slides.

 The Toon Shader lets you flatten colours using a ramp to designate sharp borders in your highlights. My intention was to use a double-sided ramp, to make a sort of linear highlight along the wheels of the car, and thus make a single focus point on them even when they are spinning.
<img width="424" alt="image" src="https://github.com/user-attachments/assets/518f0fca-5e89-426e-b1d5-197c498867b5">

Sadly, this doesnt appear to be visible enough during play/view likely due to a combination of my light shifting too much and the scale being oto small. To critique myself, I think a larger/ more significant visual component might have deserved this task

Part 3: Color Correction, and the part im most proud of. The first thing that came to mind for me was 'tint everything yellow with a hue shift' but then I got a better idea: because I knew what i wanted to add for part 4, I wanted to make the player 'hallucinate'. So instead of just hue shifting, I applied some perlin noise to my LUT in photoshop before exporting it! now, if at 0.3 Contribution it isnt noticable, but if scaled up, it causes this trippy effect you might attribute to the player being dehydrated, or perhaps wounded from a concussion if they land their bike wrong.
<img width="416" alt="image" src="https://github.com/user-attachments/assets/9aa9b39f-58f1-467c-90e0-ac3e7e8b0638">
<img width="422" alt="image" src="https://github.com/user-attachments/assets/36bd4104-c097-425a-85f1-697b1d76773a">

Scripts and Shaders were inspired from your Lecture 5 content slides.

Part 4: Special Choice. I had a really fun idea to mix with Part 3. This was inspiried (but no content taken from) lethel company's helmet HUD. I used the stencil shaders to create an opening in a cube, to create a motorcycle helmet (out of primitives) that the player looks through into the game. I know its a rather abstract addition, But I feel really proud of the idea. If i had a better Diffuse to use on the helmet, I think it would really stand out.
<img width="422" alt="image" src="https://github.com/user-attachments/assets/d0247d3e-1c9f-4462-a218-3f18bbb69ab5">



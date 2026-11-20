# Editor

Use for existing videos in Bassline Content. On first use, run `get_started` if exposed by the connector. Use the video operations and schemas actually available in the connected workspace.

## Open the library

Use the connected Bassline integration and its live discovery and onboarding. Use the active environment, authenticated workspace and brand grants. If multiple workspaces are available and the user has not clearly selected one, show their names and ask which to use. Resolve any supplied workspace or brand name against the results. When the connector binds one workspace per sign-in, use its workspace switch or Connect flow as needed. If the connector is unavailable, use the authenticated Bassline UI when available. If neither path is available, ask for a Bassline video link or the source clip and transcript and continue with the review work those inputs support.

List videos across all pages for the selected workspace and brand. Show a thumbnail when supplied, title, duration, status and a direct Bassline review link for each. Group long lists by status and preserve access to every item. Prefer native interactive cards when supported. Otherwise use a compact linked gallery or table. Ask the user to pick a video unless already specified. Never infer links from titles or guessed IDs. Use an authorized link from the integration or the URL observed in the authenticated UI. Keep private media in authenticated surfaces.

## Posting package

Review in this order: **Hook → Subtitle → Post caption**. Show the review link and the next decision on each turn. Use the UI and tool labels available to the user's account. Feature availability can differ by environment.

## Hook

Open the selected video's current review state. Lead with the review link, current hook, and the most useful preview. Prefer the playable draft or opening frames. If only the editor link is available, give that link and explain where to play the cut. Ask the user to confirm the clip before saving changes. For copy, read the transcript, the first few seconds of footage or available frames, any existing hook and cover, and approved brand/product facts. Identify what the viewer sees first, the actual payoff and when it lands. Label any transcript-only assessment.

Write exactly five distinct hook options across angles the footage supports. Show all five together. If a current hook exists, show it separately as the control. Each choice gets a stable ID, exact on-screen copy, the psychological pull, and the shot or line that pays it off. Use the same opening frame, timing and style when comparing copy. Show real overlay previews where supported. With only a still, label it as a still. With neither, use a concise choice table and keep the review link nearby.

Use concrete tension, specificity and withheld resolution. Pick among expectation violation, recognition, consequential stakes, curiosity about a visible object, and a miniature story with an unresolved turn. Vary the promise or viewer question across angles. Keep copy readable in its actual display window and check face, subtitles and platform safe areas. Drop hooks the clip cannot resolve and claims the brand cannot support. Avoid fabricated outcomes, diagnoses, shaming, engagement bait and false urgency.

For a coffee clip, if confirmed by footage, “She forgot her lactase. Then she ordered extra cream.” opens a story, “Why is she pouring a purple packet into her coffee?” uses a visible object, and “Ever forget your lactase halfway through a coffee order?” uses recognition only if that timing is supported. Avoid implying the video proves a symptom outcome.

Use **New hooks** for a fresh batch of five copy options. **Add direction** is optional. Keep the signed-in user's current hook until they pick another. If a connected regeneration operation automatically replaces the selected hook, draft the five options in conversation and apply only the requested pick. Give each new round fresh IDs so earlier picks remain unambiguous. Keep this flow on one video.

**Style** sits beside **Show on video**. Compare looks on the same opening frame or supported preview. The cover preview is part of Hook and uses the same hook wording and style. **Edit cover** opens the side panel to choose the still and place the text. Keep the cover frame and placement adjustable.

## Subtitle

Use **Edit subtitles** to open the subtitle tools in **Edit Video**. Use the same full editor for trims, cuts and other timeline changes. Preserve burned-in subtitles and avoid layering duplicate subtitles over them unless the user requests it. The brand's saved subtitle styles are available under **Templates** beside **Upload videos** when the environment supports that library.

## Post caption

Review approved brand writing guidance, the post recipe, existing brand social posts or supplied examples, and prior feedback when available. Identify the best-fit audience for this clip using the brand's audience profile and what the clip shows. Use examples for voice and rhythm, and use approved facts and the footage for claims.

Give exactly three caption options, each with a different opener or angle and its own hashtags. Write from the brand account with punchy, social-first pacing. Use one or two short lines by default and Gen Z phrasing when it fits the audience and brand. Lead with a concrete detail or reaction. Skip creator introductions, transcript recap, forced slang and invented product outcomes.

Use the app's caption options when available. Otherwise present three selectable drafts in the conversation. On regeneration, use the feedback and avoid repeating the previous three. Keep the selected caption in place until the user picks another. Post caption copy is separate from on-video subtitles.

## Save and export

Re-read the latest saved revision before applying a choice. If the video changed in the web app, reconcile the affected fields before writing. Confirm saved changes from the app or tool receipt.

Before final render, show the chosen hook, matching cover, subtitle treatment and post caption. Get explicit approval for the final render. If an operation returns a quote, show it and wait for approval before submitting the matching quote. Monitor the export to completion and deliver the verified video and cover links plus copy-ready caption and hashtags. Publishing requires a separate request.

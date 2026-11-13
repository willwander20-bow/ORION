
<%*
const file = app.workspace.getActiveFile();
const lines = (await app.vault.read(file)).split("\n");
const stack = [];
let folders = 0;
for (const line of lines) {
  const m = line.match(/^(\s*)[-*]\s+(.+?)\s*$/);
  if (!m) continue;
  const indent = m[1].replace(/\t/g, "    ").length;
  while (stack.length && stack[stack.length - 1].indent >= indent) stack.pop();
  const name = m[2].replace(/[\\/:*?"<>|]/g, "");
  stack.push({ indent, name });
  const path = stack.map(s => s.name).join("/");
  if (!app.vault.getAbstractFileByPath(path)) {
    await app.vault.createFolder(path); folders++;
  }
}
new Notice(`Created ${folders} folders`);
%>
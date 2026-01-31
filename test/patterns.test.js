import test from 'node:test';
import assert from 'node:assert';
import fs from 'node:fs';
import path from 'node:path';

const SKILL_PATH = 'SKILL.md';
const SKILL_PRO_PATH = 'SKILL_PROFESSIONAL.md';

test('Standard SKILL.md integrity', async (t) => {
  assert.ok(fs.existsSync(SKILL_PATH), 'SKILL.md should exist');
  const content = fs.readFileSync(SKILL_PATH, 'utf8');
  
  await t.test('contains all 26 patterns', () => {
    // Check for the presence of headings for patterns 1 through 26
    for (let i = 1; i <= 26; i++) {
      // Pattern 25 and 26 were recently added
      const patternHeading = new RegExp(`### ${i}\\. `, 'm');
      assert.ok(patternHeading.test(content), `Pattern #${i} heading missing in SKILL.md`);
    }
  });

  await t.test('has correct frontmatter', () => {
    assert.ok(content.includes('name: humanizer'), 'Frontmatter name missing');
    assert.ok(content.includes('version:'), 'Frontmatter version missing');
  });

  await t.test('does not contain placeholders', () => {
    assert.ok(!content.includes('<<<<['), 'Found unreplaced template placeholders');
  });
});

test('Professional SKILL_PROFESSIONAL.md integrity', async (t) => {
  assert.ok(fs.existsSync(SKILL_PRO_PATH), 'SKILL_PROFESSIONAL.md should exist');
  const content = fs.readFileSync(SKILL_PRO_PATH, 'utf8');

  await t.test('contains unique pro header', () => {
    assert.ok(content.includes('Professional Version'), 'Pro header identity missing');
    assert.ok(content.includes('Voice and Craft'), 'Pro header theme missing');
  });

  await t.test('includes technical nuance section', () => {
    console.log('Checking for Technical Nuance in:', SKILL_PRO_PATH);
    const hasSection = content.includes('Technical Nuance');
    if (!hasSection) {
        console.log('Content slice:', content.slice(0, 500));
        console.log('All headers:', content.match(/^### .*/gm));
    }
    assert.ok(hasSection, 'Technical Nuance section missing in Pro variant');
  });
});

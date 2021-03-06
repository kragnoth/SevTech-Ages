import crafttweaker.item.IIngredient;

import mods.zenstages.ZenStager;

import scripts.crafttweaker.stages.stageZero;
import scripts.crafttweaker.stages.stageTwo;
import scripts.crafttweaker.stages.stageFive;
import scripts.crafttweaker.stages.stageDisabled;

static stagedItems as IIngredient[][string] = {
	stageZero.stage: [
		<improvedbackpacks:backpack:0>,
		<improvedbackpacks:backpack:0>.withTag({Color: 0}),
		<improvedbackpacks:backpack:0>.withTag({Color: 1}),
		<improvedbackpacks:backpack:0>.withTag({Color: 2}),
		<improvedbackpacks:backpack:0>.withTag({Color: 3}),
		<improvedbackpacks:backpack:0>.withTag({Color: 4}),
		<improvedbackpacks:backpack:0>.withTag({Color: 5}),
		<improvedbackpacks:backpack:0>.withTag({Color: 6}),
		<improvedbackpacks:backpack:0>.withTag({Color: 7}),
		<improvedbackpacks:backpack:0>.withTag({Color: 8}),
		<improvedbackpacks:backpack:0>.withTag({Color: 9}),
		<improvedbackpacks:backpack:0>.withTag({Color: 10}),
		<improvedbackpacks:backpack:0>.withTag({Color: 11}),
		<improvedbackpacks:backpack:0>.withTag({Color: 12}),
		<improvedbackpacks:backpack:0>.withTag({Color: 13}),
		<improvedbackpacks:backpack:0>.withTag({Color: 14}),
		<improvedbackpacks:backpack:0>.withTag({Color: 15}),
		<improvedbackpacks:blank_upgrade:0>,
		<improvedbackpacks:upgrade:1>,
		<improvedbackpacks:upgrade:0>
	],

	stageTwo.stage: [
		<improvedbackpacks:upgrade:2>,
		<improvedbackpacks:upgrade:3>
	],

	stageFive.stage: [
		<improvedbackpacks:upgrade:4>
	]
};

static hiddenItems as IIngredient[] = [
	<improvedbackpacks:bound_leather:0>,
	<improvedbackpacks:tanned_leather:0>
];

static hiddenRemove as IIngredient[] = [
	<improvedbackpacks:ender_backpack:0> // We have the ender pouch and this has no def recipe, darkoLUL
];

function init() {
	for stageName, items in stagedItems {
		ZenStager.getStage(stageName).addIngredients(items);
	}
	recipeUtil.hideItems(hiddenItems as IIngredient[]);
	recipeUtil.hideItems(hiddenRemove as IIngredient[], true);
}

<template>
	<el-menu :default-active="activeIndex" class="el-menu-demo" mode="horizontal" background-color="#545c64"
		text-color="#fff" active-text-color="#ffd04b" @select="handleSelect">
		<el-menu-item index="1">Inicio</el-menu-item>
		<el-sub-menu index="2">
			<template #title>Modelos</template>
			<el-menu-item index="2-1">Un modelo</el-menu-item>
			<el-menu-item index="2-2">Otro modelo</el-menu-item>
			<el-menu-item index="2-3">Modelo 3</el-menu-item>
			<el-sub-menu index="2-4">
				<template #title>Series s</template>
				<el-menu-item index="2-4-1">Serie s one</el-menu-item>
				<el-menu-item index="2-4-2">Serie s two</el-menu-item>
				<el-menu-item index="2-4-3">Serie s three</el-menu-item>
			</el-sub-menu>
		</el-sub-menu>
		<el-menu-item index="3" disabled>Questionario</el-menu-item>
		<el-menu-item index="4">Reto diario</el-menu-item>
	</el-menu>
</template>

<script lang="ts" setup>
import { ref } from 'vue'

const activeIndex = ref('1')
const handleSelect = (key: string, keyPath: string[]) => {
	console.log(key, keyPath)
}
</script>
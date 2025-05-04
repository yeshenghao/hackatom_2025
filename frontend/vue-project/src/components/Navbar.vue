<script lang="ts" setup>
import { useRouter } from 'vue-router'

const router = useRouter()

const handleSelect = (path: string) => {
  router.push(path) // Navega a la ruta seleccionada
}
</script>

<template>
	<el-menu :default-active="$route.path"
		class="el-menu-demo" 
		mode="horizontal" 
		background-color="#545c64"
		text-color="#fff" 
		active-text-color="#ffd04b" 
		@select="handleSelect"
		>
		<el-menu-item index="/">Menú principal</el-menu-item>
		<el-sub-menu index="2">
			<template #title>Modelos</template>
			<el-menu-item index="/formentor">FORMENTOR</el-menu-item>
			<el-menu-item index="/tavascan">TAVASCAN</el-menu-item>
		</el-sub-menu>
		<el-menu-item index="/test">Test</el-menu-item>
		<el-menu-item index="/sobre-nosotros">Sobre nosotros</el-menu-item>
	</el-menu>
</template>

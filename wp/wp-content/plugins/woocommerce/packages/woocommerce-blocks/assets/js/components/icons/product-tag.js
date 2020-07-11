/**
 * External dependencies
 */
import { Icon } from '@wordpress/components';

export default ( { className } ) => (
	<Icon
		className={ className }
		icon={
			<svg viewBox="0 0 24 24" xmlns="http://www.w3.org/2000/svg">
				<path d="M21.45,0H12.14L.75,11.4A2.55,2.55,0,0,0,.75,15L9,23.25a2.55,2.55,0,0,0,3.61,0L24,11.86V2.55A2.55,2.55,0,0,0,21.45,0Z" />
				<circle fill="#fff" cx="18.07" cy="5.75" r="2.47" />
				<path
					fill="#fff"
					d="M9.27,9.53c-.14-.53.19-.85.72-.72l3.17.82a1.83,1.83,0,0,1,1.21,1.21L15.19,14c.13.53-.19.86-.72.72l-3.17-.81a1.9,1.9,0,0,1-1.22-1.22Z"
				/>
				<path
					fill="#fff"
					d="M14.14,15.71a.52.52,0,0,1,.26,1L12.09,19a1.94,1.94,0,0,1-1.68.46l-3.16-.81a.52.52,0,0,1-.26-1L9.3,15.36A1.93,1.93,0,0,1,11,14.9Z"
				/>
				<path
					fill="#fff"
					d="M8.29,9.86a.52.52,0,0,0-1-.26L5,11.91a1.94,1.94,0,0,0-.46,1.68l.81,3.16a.52.52,0,0,0,1,.26L8.64,14.7A1.93,1.93,0,0,0,9.1,13Z"
				/>
			</svg>
		}
	/>
);